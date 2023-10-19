@extends('navbar')

@section('content')

<div class="container">

<h3 class="mt-3 mb-3">Detail Data News</h3>

<table class="table mt-3">
  <tbody>
    <tr>
      <td>Title</td>
      <td>:</td>
      <td>{{$news->title}}</td>
    </tr>
    <tr>
      <td>Content</td>
      <td>:</td>
      <td>{{$news->content}}</td>
    </tr>
    <tr>
      <td>Image</td>
      <td>:</td>
      <td>
        <img src="{{ asset('images/' . $news->image) }}" alt="News Image" width="800" height="400">
    </td>
    </tr>
    <tr>
      <td>Category</td>
      <td>:</td>
      <td>{{$news->category->category_name}}</td>
    </tr>
  </tbody>
</table>
<a class="btn btn-success" href="/news" role="button">Kembali</a>
</div>
@endsection