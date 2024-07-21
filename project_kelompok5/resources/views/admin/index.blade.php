@extends('layouts.layouts')

@section('content')
<section style="margin-top: 100px">
    <div class="container col-xxl-8 py-5" data-aos="flip-left"
    data-aos-easing="ease-out-cubic"
    data-aos-duration="2000">
        <h3 class="fw-bold mb-3">Halaman Dashboard Admin</h3>
        <p class="mb-5">Selamat datang di halaman dashboard admin sman 2 purwakarta!!</p>

        <div class="row justify-content-center">
          <div class="col-lg-4 mb-4">
              <div class="card shadow-sm rounded-3 border border-primary">
                  <img src="{{ asset('assets/images/admin.jpg')}}" class="card-img-top" alt="Berita Terkini">
                  <div class="card-body">
                      <h5 class="card-title">Berita Terkini</h5>
                      <p class="card-text">Atur dan kelola berita terkini di sini.</p>
                      <a href="{{ route('blog')}}" class="btn btn-primary">Detail</a>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 mb-4">
            <div class="card shadow-sm rounded-3 border border-primary">
                <img src="{{ asset('assets/images/admin.jpg')}}" class="card-img-top" alt="Video Kegiatan">
                <div class="card-body">
                    <h5 class="card-title">Video Kegiatan</h5>
                    <p class="card-text">Atur dan kelola video kegiatan di sini.</p>
                    <a href="{{ route('video')}}" class="btn btn-primary">Detail</a>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>
@endsection
