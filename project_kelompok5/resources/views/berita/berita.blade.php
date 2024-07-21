@extends('layouts.layouts')

@section('content')
<section id="berita" style="margin-top: 50px;" class="py-5">
    <div class="container py-5">
        <div class="header-berita text-center mb-5">
            <h2 class="fw-bold">Berita SMAN 2 Purwakarta</h2>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-4">
            @foreach ($artikels as $item)
            <div class="col mb-4">
                <div class="card border-0 shadow-sm" style="height: 100%;">
                    <img src="{{ asset('storage/artikel/' . $item->image) }}" class="card-img-top" alt="{{ $item->judul }}">
                    <div class="card-body d-flex flex-column">
                        <p class="text-muted mb-2">{{ $item->created_at->format('d F Y') }}</p>
                        <h4 class="card-title fw-bold mb-3">{{ $item->judul }}</h4>
                        <p class="card-text mb-auto" style="flex: 1;">{{ Str::words(strip_tags($item->desc), 10) }}</p>
                        <a href="/detail/{{ $item->slug }}" class="btn btn-danger mt-2">Selengkapnya</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection
