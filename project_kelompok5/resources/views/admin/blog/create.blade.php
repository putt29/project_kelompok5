@extends('layouts.layouts')

@section('content')
<section class="py-5" style="margin-top: 100px">
    <div class="container col-xxl-8" data-aos="flip-left"
    data-aos-easing="ease-out-cubic"
    data-aos-duration="2000">

        <div class="d-flex">
            <a href="{{ route('blog') }}">Back</a>
            <div class="mx-1"> . </div>
            <a href="">Buat Berita </a>
        </div>
        <h3 class="fw-bold mb-3">Halaman Berita SMAN 2 PURWAKARTA</h3>

        <form action="{{ route('blog.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group mb-4">
                <label for="">Masukan Judul</label>
                <input type="text" class="form-control @error('judul') is-invalid @enderror" name="judul" value="{{ old('judul') }}">

                @error('judul')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group mb-4">
                <label for="">Masukan Foto</label>
                <input type="file" class="form-control @error('image') is-invalid @enderror" name="image" value="{{ old('image') }}">

                @error('image')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group mb-4">
                <label for="">Artikel Berita</label>
                <textarea name="desc" id="summernote">
                    {{ old('desc') }}
                </textarea>
                @error('desc')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>



    </div>
</section>

@endsection
