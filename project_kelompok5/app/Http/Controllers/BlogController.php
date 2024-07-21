<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Intervention\Image\Facades\ImageManagerStatic as Image;
//use Intervention\Image\Facades\Image;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
//use Image;
//use Illuminate\Foundation\ComposerScriptspostAutoloadDump;

class BlogController extends Controller
{
    use ValidatesRequests;

    public function index()
    {
        return view('admin.blog.index', [
            'artikels' => Blog::orderBy('id','desc')->get()
        ]);
    }

    public function create()
    {
        return view('admin.blog.create');
    }

    public function store(Request $request)
    {
        $rules = [
            'judul' => 'required',
            'image' => 'required|max:5000|mimes:jpg,jpeg,png,webp',
            'desc' => 'required|min:20',
        ];

        $messages = [
            'judul.required' => 'Judul wajib diisi!',
            'image.required' => 'Image wajib diisi!',
            'desc.required' => 'Deskripsi wajib diisi!',
        ];
        
        $this->validate($request, $rules, $messages);

        // Menyimpan gambar utama
        $fileName = time() . '.' . $request->image->extension();
        $request->file('image')->storeAs('public/artikel', $fileName);

        // Proses deskripsi untuk menyimpan gambar inline
        $storage = "storage/content-artikel";
        $dom = new \DOMDocument();

        // Menonaktifkan kesalahan libxml standar
        libxml_use_internal_errors(true);
        $dom->loadHTML($request->desc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
        // Menghapus buffer kesalahan libxml
        libxml_clear_errors();

        // Baca di https://dosenit.com/php/fungsi-libxml-php
        $images = $dom->getElementsByTagName('img');

        foreach ($images as $img) {
            $src = $img->getAttribute('src');
            if (preg_match('/data:image/', $src)) {
                preg_match('/data:image\/(?<mime>.*?)\;/', $src, $groups);
                $mimetype = $groups['mime'];
                $fileNameContent = uniqid();
                $fileNameContentRand = substr(md5($fileNameContent), 6, 6) . '_' . time();
                $filePath = ("$storage/$fileNameContentRand.$mimetype");
                $image = Image::make($src)->resize(1440, 720)->encode($mimetype, 100)->save(public_path($filePath));
                $new_src = asset($filePath);
                $img->removeAttribute('src');
                $img->setAttribute('src', $new_src);
                $img->setAttribute('class', 'img-responsive');
            }
        }

        // Menyimpan artikel ke database
        Blog::create([
            'judul' => $request->judul,
            'slug' => Str::slug($request->judul, '-'),
            'image' => $fileName,
            'desc' => $dom->saveHTML(),
        ]);

        return redirect(route('blog'))->with('success', 'Data berhasil disimpan');
    }

    public function edit($id)
    {
        $artikel = Blog::find($id);
        return view('admin.blog.edit', [
            'artikel' => $artikel
        ]);
    }

    public function update(Request $request, $id)
    {
        $artikel = Blog::find($id);

        # Jika ada image baru
        if ($request->hasFile('image')) {
            $fileCheck = 'required|max:5000|mimes:jpg,jpeg,png';
        } else {
            $fileCheck = '';
        }

        $rules = [
            'judul' => 'required',
            'image' => $fileCheck,
            'desc' => 'required|min:20',
        ];

        $messages = [
            'judul.required' => 'Judul wajib diisi!',
            'image.required' => 'Image wajib diisi!',
            'desc.required' => 'Desc wajib diisi!',
        ];

        $this->validate($request, $rules, $messages);

        // Cek jika ada image baru
        if ($request->hasFile('image')) {
            if (\File::exists('storage/artikel/' . $artikel->image)) {
                \File::delete('storage/artikel/' . $request->old_image);
            }
            $fileName = time() . '.' . $request->image->extension();
            $request->file('image')->storeAs('public/artikel', $fileName);
        }

        if ($request->hasFile('image')) {
            $checkFileName = $fileName;
        } else {
            $checkFileName = $request->old_image;
        }

        // Artikel
        $storage = "storage/content-artikel";
        $dom = new \DOMDocument();
        libxml_use_internal_errors(true);
        $dom->loadHTML($request->desc, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NOIMPLIED);
        libxml_clear_errors();

        $images = $dom->getElementsByTagName('img');

        foreach ($images as $img) {
            $src = $img->getAttribute('src');
            if (preg_match('/data:image/', $src)) {
                preg_match('/data:image\/(?<mime>.*?)\;/', $src, $groups);
                $mimetype = $groups['mime'];
                $fileNameContent = uniqid();
                $fileNameContentRand = substr(md5($fileNameContent), 6, 6) . '_' . time();
                $filePath = ("$storage/$fileNameContentRand.$mimetype");
                $image = Image::make($src)->resize(1200, 1200)->encode($mimetype, 100)->save(public_path($filePath));
                $new_src = asset($filePath);
                $img->removeAttribute('src');
                $img->setAttribute('src', $new_src);
                $img->setAttribute('class', 'img-responsive');
            }
        }

        $artikel->update([
            'judul' => $request->judul,
            'image' => $checkFileName,
            'desc' => $dom->saveHTML(),
        ]);

        return redirect(route('blog'))->with('success', 'data berhasil di update');
    }

    public function destroy($id)
{
    $artikel = Blog::find($id);

    if ($artikel) {
        // Mengecek apakah file gambar ada dan menghapusnya
        if (Storage::exists('public/artikel/' . $artikel->image)) {
            Storage::delete('public/artikel/' . $artikel->image);
        }

        // Menghapus artikel
        $artikel->delete();

        return redirect()->route('blog')->with('success', 'Data berhasil dihapus');
    }

    return redirect()->route('blog')->with('error', 'Artikel tidak ditemukan');
}

}