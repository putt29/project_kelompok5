<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" href="{{ asset('assets/icons/logo.ico') }}">

        <title>SMAN 2 PURWAKARTA</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        {{-- Summernote CSS di antara Head--}}
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.css" />

        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        {{-- navbar --}}
        @include('layouts.navbar')

        @yield('content')

        <section id="footer" class="bg-white">
            <div class="container py-4" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom">
                <footer>
                    <div class="row">
                        {{-- kolo,1 --}}
                        <div class="col-12 col-md-3 mb-3">
                            <h5 class="fw-bold mb-3">Navigasi</h5>
                            <div class="d-flex">
                                <ul class="nav flex-column me-5">
                                    <li class="nav-item mb-2"><a href="/" class="nav-link p-0 text-muted">SMAN 2 PURWAKARTA</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        {{-- kolom2 --}}
                        <div class="col-12 col-md-3 mb-3">
                            <h5 class="fw-bold mb-3">Follow Kami</h5>
                            <div class="d-flex">
                               <a href="" target="_blank" class="text-decoration-none text-dark">
                                <img src="{{ asset('assets/images/Facebook_logo_36x36.svg.png') }}" height="30px" width="30px"
                                class="me-4" alt="">
                               </a>
                                <a href="" target="_blank" class="text-decoration-none text-dark">
                                 <img src="{{ asset('assets/images/ig.png') }}" height="30px" width="30px"
                                 class="me-4" alt="">
                                </a>
                                <a href="" target="_blank" class="text-decoration-none text-dark">
                                 <img src="{{ asset('assets/images/youtun.jpeg') }}" height="30px" width="30px"
                                 class="me-4" alt="">
                                </a>
                            </div>
                        </div>
                        {{-- kolom3 --}}
                        <div class="col-12 col-md-3 mb-3">
                            <h5 class="fw-bold mb-3">Kontak Kami</h5>
                            <div class="d-flex">
                                <ul class="nav flex-column me-5">
                                    <li class="nav-item mb-2"><a href="" class="nav-link p-0 text-muted">(0264) 201072</a>
                                    </li>
                                    <li class="nav-item mb-2"><a href="" class="nav-link p-0 text-muted">info@sman2pwk.sch.id</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        {{-- kolom4 --}}
                        <div class="col-12 col-md-3 mb-3">
                            <h5 class="fw-bold mb-3">Alamat</h5>
                            <div class="d-flex">
                                <ul class="nav flex-column me-5">
                                    <li class="nav-item mb-2"><a href="" class="nav-link p-0 text-muted">Jl. Raya Sadang No.17, Ciseureuh, Purwakarta</a>
                                    </li>
                                </ul>
                                </ul>
                            </div>
                    </div>
                </footer>
            </div>

        </section>

        <section class="bg-light border-top">
            <div class="container py-4">
                <div class="d-flex justify-content-between">
                    <div>
                        Copyright 2019 © Kelompok 5
                    </div>
                    <div class="d-flex">
                        <p class="me-4">Syarat Dan Ketentuan</p>
                        <p>
                            <a href="" class="text-decoration-none text-dark">Kebijakan Privacy</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>

        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>


        <script>
            const navbar = document.querySelector(".fixed-top");
            window.onscroll = () => {
                if(window.scrollY > 100){
                    navbar.classList.add("scroll-nav-active");
                    navbar.classList.add("text-nav-active");
                    //navbar.classList.remove("navbar-dark");
                } else {
                    navbar.classList.remove("scroll-nav-active");
                   // navbar.classList.add("navbar-dark");
                }
            };

            AOS.init();
        </script>
        {{-- JQUERY --}}
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"></script>
    {{-- Summernote JS --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.js"></script>
    <script>
        $(document).ready(function() {
                    $('#summernote').summernote({
                        height: 200,
                    });
         });
        </script>
    </body>
</html>
