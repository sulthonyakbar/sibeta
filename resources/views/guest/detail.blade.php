@extends('guest.navbar')

@section('content')

<div class="container-md">

    <h3 class="fw-bold mt-3">{{ $news->title }}</h3>
    <img src="{{ asset('images/' . $news->image) }}" class="card-img-top pt-3 pe-3 ps-3" alt="News Image" height="600">
    <hr>
    <p class="fs-6 text-body-secondary">{{ $news->category->category_name }} - {{ $news->created_at->format('d M Y') }}</p>
    <p class="text-start lh-lg">{{ $news->content }}</p>

</div>

@endsection