@extends('layouts.layouts')

@section('content')
<section id="vidio_youtube" class="py-5">
    <div class="container py-5" data-aos="fade-right"
    data-aos-offset="300"
    data-aos-easing="ease-in-sine">
        <div class="header-berita text-center py-5">
            <h2 class="fw-bold">Kegiatan SMAN 2 Purwakarta</h2>
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
</section>

@endsection
