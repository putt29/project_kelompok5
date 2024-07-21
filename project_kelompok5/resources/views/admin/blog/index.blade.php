@extends('layouts.layouts')

@section('content')
<section class="py-5" style="margin-top: 100px">
    <div class="container col-xxl-8" data-aos="flip-left"
    data-aos-easing="ease-out-cubic"
    data-aos-duration="2000">
        <h3 class="fw-bold mb-3">Halaman Berita SMAN 2 PURWAKARTA</h3>

        <div class="d-flex">
            <a href="{{ route('dashboard') }}">Back</a>
            <div class="mx-1"> . </div>
        </div>

        <a href="{{ route('blog.create') }}" class="btn btn-primary">Buat Berita</a>

        @if (session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Informasi:</strong> {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif

        <div class="table-responsive">
            <table class="table table-bordered py-3">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Image</th>
                        <th>Judul</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $no = 1;
                    @endphp
                    @foreach ($artikels as $artikel)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>
                            <img src="{{ asset('storage/artikel/'.$artikel->image) }}" height="100" alt="">
                        </td>
                        <td>
                            {{ $artikel->judul }}
                        </td>
                        <td>
                            <a href="{{ route('blog.edit', $artikel->id) }}" class="btn btn-warning">Edit</a>
                            <form action="{{ route('blog.destroy', $artikel->id) }}" method="POST" class="d-inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit" onclick="return confirm('Apakah yakin akan dihapus?')" class="btn btn-danger">Hapus</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</section>
@endsection
