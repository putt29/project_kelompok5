@extends('layouts.layouts')

@section('content')

<section id="detail" style="margin-top: 100px" class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xxl-8" data-aos="fade-right"
                 data-aos-offset="300"
                 data-aos-easing="ease-in-sine">
                <div class="mb-3">
                    <a href="/">Home</a> / <a href="/visi">Visi Misi</a>
                </div>

                <h2 class="fw-bold">Visi & Misi</h2>
                <div class="text-center">
                    <img src="{{ asset('assets/images/visi.jpeg') }}" class="img-fluid mb-3" alt="Visi & Misi">
                </div>
                <div class="konten-prestasi text-center">
                    <p class="text-secondary">Prestasi Meraih Medali Perak Pada Olimpiade Bhs. Indonesia Tk. Nasional</p>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
