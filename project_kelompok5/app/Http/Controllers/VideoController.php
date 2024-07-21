<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Video;
use Illuminate\Foundation\Validation\ValidatesRequests;

class VideoController extends Controller
{
    use ValidatesRequests;

    public function index()
    {
        return view('admin.video.index', [
            'videos' => Video::orderBy('id', 'desc')->get()
        ]);
    }


    public function store(Request $request)
    {
        $rules = [
            'judul' => 'required',
            'youtube_code' => 'required',
        ];

        $messages = [
            'judul.required' => 'Judul wajib diisi!',
            'youtube_code.required' => 'Code Yt Wajib Diisi!! wajib diisi!',
        ];

        $this->validate($request, $rules, $messages);


        // Menyimpan artikel ke database
        Video::create([
            'judul' => $request->judul,
            'youtube_code' => $request->youtube_code,
        ]);

        return redirect(route('video'))->with('success', 'Data berhasil disimpan');

    }


    public function update(Request $request, $id)
    {
        $video = Video::find($id);

        $rules = [
            'judul' => 'required',
            'youtube_code' => 'required',
        ];

        $messages = [
            'judul.required' => 'Judul wajib diisi!',
            'youtube_code.required' => 'Code Yt Wajib Diisi!! wajib diisi!',
        ];

        $this->validate($request, $rules, $messages);

        $video->update([
            'judul' => $request->judul,
            'youtube_code' => $request->youtube_code,
        ]);

        return redirect(route('video'))->with('success', 'data berhasil di update');

    }

    public function edit()
    {

    }

    public function destroy($id)
    {
        $video = Video::find($id);

        $video->delete();

        return redirect(route('video'))->with('success', 'data berhasil di hapus');
    }

    public function youtube()
    {
        return view('admin.video.youtube', [
            'videos' => Video::orderBy('id', 'desc')->get()
        ]);

       
    }
}
