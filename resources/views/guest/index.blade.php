@extends('guest.navbar')

@section('content')

<div class="container">

<form class="d-flex mt-3" role="search" method="get">
      <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

    <div class="row">
    @foreach($news as $item)
    <div class="col-md-4 d-flex align-items-stretch">
        <div class="card mt-3">
        <a href="{{ route('guest.detail', $item->newsId) }}">
            <img src="{{ asset('images/' . $item->image) }}" class="card-img-top pt-3 pe-3 ps-3" alt="News Image">
        </a>
        <div class="card-body">
            <hr>
            <p class="card-title fs-6 text-body-secondary">{{ $item->category->category_name }} - {{ $item->created_at->format('d M Y') }}</p>
            <a href="{{ route('guest.detail', $item->newsId) }}" class="link-dark link-underline-opacity-0 link-underline-opacity-75-hover">
                <h5 class="card-title fw-bold">{{ $item->title }}</h5>
            </a>
            <p class="card-text">{{ Str::limit($item->content, 100) }}</p>
            <a href="{{ route('guest.detail', $item->newsId) }}" class="btn btn-outline-primary btn-sm align-self-end">Read News >></a>
        </div>
        </div>
    </div>
        @endforeach
    </div>
</div>

@endsection