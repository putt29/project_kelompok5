@extends('layouts.layouts')

@section('content')
<section style="margin-top: 100px">
    <div class="container py-5 col-xxl-6" data-aos="flip-left"
    data-aos-easing="ease-out-cubic"
    data-aos-duration="2000">
        <h3 class="fw-bold mb-3">Halaman Login Admin</h3>
        <form action="/login" method="POST">
            @csrf
            <div class="form-grup mb-3">
                <label for="">masukan email</label>
                <input type="text" name="email" class="form-control">
            </div>

            <div class="formgroup mb-3">
                <label for="">Masukan password</label>
                <input type="text" name="password" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</section>

@endsection
