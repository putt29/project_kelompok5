@extends('layouts.layouts')

@section('content')

<section id="hero" style="background-color: white; padding: 50px 0;">
    <div class="container text-center text-white">
        <div class="hero-title" data-aos="fade-up">
            <div class="hero-text" style="font-size: 3rem;">SMAN 2 PURWAKARTA</div>
            <h4 style="font-size: 2rem;">Generasi Kreatif, Inovatif dan Tangguh</h4>
        </div>
    </div>
</section>

<section id="join" class="py-5">
    <div class="container py-5" data-aos="zoom-in">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6">
                <div class="d-flex align-items-center">
                    <div class="stripe me-2"></div>
                    <h5 class="fw-bold mb-2">Sambutan Kepala Sekolah</h5>
                </div>
                <p class="py-3">Para pengunjung situs yang berbahagia, kami ucapkan selamat datang di situs SMAN 2 Purwakarta. Dalam rangka memajukan pendidikan di era berkembangnya teknologi informasi dan komunikasi tentulah sangat diperlukan berbagai sarana dan prasarana yang kondusif.</p>
                <p>Kebutuhan berbagai informasi bagi siswa, guru, orang tua siswa maupun masyarakat, membuat kami berusaha untuk mewujudkan peluncuran situs ini dengan maksimal. Kami berharap dengan diluncurkannya situs ini dapat membantu dan bermanfaat terutama untuk seputar informasi yang berhubungan dengan pendidikan di SMAN 2 Purwakarta. Kami berharap dengan adanya media informasi, situs ini juga dapat mewujudkan silaturrahmi, menambah wawasan, mempermudah dan mempercepat akses dalam memperoleh info yang dibutuhkan.</p>
                <p>Akhirnya kami mengucapkan terima kasih atas kunjungan terhadap situs ini, mudah-mudahan memberi manfaat bagi kita semua.</p>
                <h6 class="fw-bold mt-4">H. KASIDI, S.Pd.Fis., M.Pd</h6>
                <h7 class="fw-bold">Kepala Sekolah SMAN 2 Purwakarta</h7>
            </div>
            <div class="col-lg-6 d-flex justify-content-center">
                <img src="{{ asset('assets/images/kepsek.jpeg') }}" class="img-fluid" alt="Foto Kepala Sekolah">
            </div>
        </div>
    </div>
</section>

<section id="vidio" class="py-1">
    <div class="container py-5" data-aos="fade-down">
        <div class="header-profil text-center">
            <h2 class="fw-bold py-3">Profil SMA Negeri 2 Purwakarta</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/jdnWFkEUl3g?si=Wwssn6_qZfcAXdN3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
    </div>
</section>

<section id="prestasi" class="py-5">
    <div class="container py-5" data-aos="fade-down">
        <div class="header-prestasi text-center">
            <h2 class="fw-bold">Prestasi Kami</h2>
        </div>

        <div class="row py-4">
            <div class="col-lg-4">
                <div class="card border-0">
                    <img src="{{ asset('assets/images/p2.jpeg') }}" class="img-fluid mb-3" alt="Prestasi Kejuaraan Bola Volley">
                    <div class="konten-prestasi">
                        <p class="mb-3 text-secondary">13/07/2024</p>
                        <h4 class="fw-bold mb-3">Prestasi Kejuaraan Bola Volley</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-0">
                    <img src="{{ asset('assets/images/p1.jpeg') }}" class="img-fluid mb-3" alt="Prestasi Meraih Medali Perak Pada Olimpiade Bhs. Indonesia Tk. Nasional">
                    <div class="konten-prestasi">
                        <p class="mb-3 text-secondary">03/07/2024</p>
                        <h4 class="fw-bold mb-3">Prestasi Meraih Medali Perak Pada Olimpiade Bhs. Indonesia Tk. Nasional</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-0">
                    <img src="{{ asset('assets/images/p3.jpeg') }}" class="img-fluid mb-3" alt="Prestasi Seni Tari Purwakarta">
                    <div class="konten-prestasi">
                        <p class="mb-3 text-secondary">10/06/2024</p>
                        <h4 class="fw-bold mb-3">Prestasi Seni Tari Purwakarta</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="berita" class="py-5">
    <div class="container py-2" data-aos="fade-down">
        <div class="header-berita text-center">
            <h2 class="fw-bold">Berita Terkini</h2>
        </div>

        <div class="row py-5">
            @foreach ($artikels as $item)
            <div class="col-lg-4">
                <div class="card border-0">
                    <img src="{{ asset('storage/artikel/' . $item->image) }}" class="img-fluid mb-3" alt="">
                    <div class="konten-berita">
                        <p class="mb3 text-secondary">{{ $item->create_at }}</p>
                        <h4 class="fw-bold mb-3">{{ $item->judul }}</h4>
                        <a href="/detail/{{ $item->slug }}" class="text-decoration-none text-danger">Selengkapnya</a>
                    </div>
                </div>
            </div>
            @endforeach

        </div>

        <div class="footer-berita text-center">
            <a href="/berita" class="btn btn-outline-danger">Berita Lainya</a>
        </div>
    </div>
</section>

<section id="vidio_youtube" class="py-5">
    <div class="container py-2" data-aos="fade-right"
    data-aos-offset="300"
    data-aos-easing="ease-in-sine">
        <div class="header-berita text-center py-5">
            <h2 class="fw-bold">Kegiatan SMA Negeri 2 Purwakarta</h2>
        </div>

        <div class="row">
            @foreach ($videos as $item)
            <div class="col-lg-4">
                <iframe width="100%" height="215" src="https://www.youtube.com/embed/{{ $item->youtube_code }}"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
            @endforeach

        </div>

    </div>
    <div class="footer-berita text-center">
        <a href="/kegiatan" class="btn btn-outline-danger">Vidio Lainya</a>
    </div>
</section>
@endsection






