{{-- navbar --}}
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
            <a class="nav-link active" href="/berita">Berita</a>
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
{{-- navbar --}}
