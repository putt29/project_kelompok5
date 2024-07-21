<?php

use App\Http\Controllers\AppController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\VideoController;
use GuzzleHttp\Middleware;
use Illuminate\Support\Facades\Route;


Route::get('/', [AppController::class, 'index']);

Route::get('/berita', [AppController::class, 'berita']);

Route::get('/kegiatan', [AppController::class, 'kegiatan']);

Route::get('/visi', [AppController::class, 'visi']);

Route::get('/sejarah', [AppController::class, 'sejarah']);

Route::get('/detail/{slug}', [AppController::class, 'detail']);



Route::get('/login', [AuthController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [AuthController::class, 'authenticate']);
Route::post('/logout', [AuthController::class, 'logout']);

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');

Route::get('/login', [AuthController::class, 'index'])->name('login')->middleware('guest');

Route::get('/blog', [BlogController::class, 'index'])->name('blog')->middleware('auth');
Route::get('/blog/create', [BlogController::class, 'create'])->name('blog.create')->middleware('auth');
Route::post('/blog/store', [BlogController::class, 'store'])->name('blog.store')->middleware('auth');
Route::get('/blog/edit/{id}', [BlogController::class, 'edit'])->name('blog.edit')->middleware('auth');
Route::post('/blog/update/{id}', [BlogController::class, 'update'])->name('blog.update')->middleware('auth');
//Route::post('/blog/destroy/{id}', [BlogController::class, 'destroy'])->name('blog.destroy')->middleware('auth');
Route::delete('blog/destroy/{id}', [BlogController::class, 'destroy'])->name('blog.destroy');


Route::get('/contact', [HomeController::class, 'contact']);
Route::get('/about', [HomeController::class, 'about']);

Route::get('/video', [VideoController::class, 'index'])->name('video')->middleware('auth');
Route::post('/video/store', [VideoController::class, 'store'])->name('video.store')->middleware('auth');
Route::post('/video/update{id}', [VideoController::class, 'update'])->name('video.update')->middleware('auth');
Route::delete('/video/destroy/{id}', [VideoController::class, 'destroy'])->name('video.destroy')->middleware('auth');
// Route::get('/video/youtube/', [VideoController::class, 'youtube'])->name('video.youtube')->middleware('auth');
// Route::get('/video/destroy/{id}', [VideoController::class, 'video.youtube']);


Route::get('/visi', [ProfileController::class, 'visi']);
Route::get('/tentang', [ProfileController::class, 'tentang']);

route::get('/visi', function () {
    return view('visi.visi');
});

route::get('/sejarah', function () {
    return view('sejarah.sejarah');
});