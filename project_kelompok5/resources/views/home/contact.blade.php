@extends('layouts.layouts')

@section('content')

<nav class="navbar navbar-expand-lg py-3 fixed-top {{ Request::segment(1) == '' ? '' : 'bg-white shadow' }}">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img src="{{ asset('assets/icons/logo.png') }}" height="55" width="55" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/">Home</a>
            </li>
            <li class="nav-item">
                <div class="dropdown">
                    <button class="nav-link active dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Profile
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="sejarah">Sejarah</a></li>
                        <li><a class="dropdown-item" href="visi">Visi & Misi</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="berita">Berita</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/kegiatan">Video Kegiatan</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/contact">Alamat</a>
            </li>
        </ul>
        <div class="d-flex">
          @auth
          <form action="/logout" method="POST">
            @csrf
              <button type="submit" class="btn btn-dark">Logout</button>
          </form>

          @else
          <button class="btn btn-danger"><a href="/login" class="btn">Login</a></button>
          @endauth

        </div>
      </div>
    </div>
  </nav>

<section class="maps-section" style="margin-top: 100px;">
    <div class="container">
        <div class="maps">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.0646497902503!2d107.4634196741848!3d-6.513501593478895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e690de56a65e44f%3A0xae67544443d7e927!2sSMA%20Negeri%202%20Purwakarta!5e0!3m2!1sid!2sid!4v1721005420328!5m2!1sid!2sid"
                width="100%" height="400" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</section>

@endsection

