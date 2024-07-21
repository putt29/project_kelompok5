<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Video;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function index()
    {
        return view('welcome', [
            'artikels' => Blog::orderBy('id','desc')->limit(3)->get(),
            'videos' => Video::orderBy('id', 'desc')->limit(3)->get()
        ]);
    }

    public function berita()
    {
        return view('berita.berita',[
            'artikels' => Blog::orderBy('id','desc')->get()
        ]);

       
    }

    public function kegiatan()
    {
        return view('kegiatan.kegiatan', [
            'videos' => Video::orderBy('id', 'desc')->get()
        ]);

       
    }

    public function detail($slug)
    {
        $artikel = Blog::where('slug', $slug)->first();

        // echo '<pre>';
        // echo print_r(artikel);
        // echo '</pre>';
        return view('berita.detail',[
            'artikel' => $artikel
        ]);

       
    }
}
