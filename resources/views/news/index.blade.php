@extends('navbar')

@section('content')

<div class="container">

  <h5 class="mt-3"> Selamat Datang,<b> {{ Auth::user()->email }} </b></h5>

    <h3 class="mt-3">Data News</h3>

    <a class="btn btn-primary btn-sm mt-3" href="{{ route('news.create') }}" role="button">+ Tambah Data News</a>

    <form class="d-flex mt-3" role="search" method="get">
      <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

<table class="table mt-3">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Title</th>
      <th scope="col">Category</th>
      <th scope="col">Opsi</th>
    </tr>
  </thead>
  <tbody>
        <?php $no=1 + (($news->currentPage() - 1 ) * $news->perPage()); ?>
        @foreach($news as $n)
    <tr>
      <th scope="row">{{$no}}</th>
      <td>{{$n->title}}</td>  
      <td>{{$n->category->category_name ?? '-'}}</td>
      <td>
        <span class="badge text-bg-success"><a href="{{ route('news.detail', $n->newsId) }}" class="btn btn-sm text-white">Detail</a></span>
        <span class="badge text-bg-info"><a href="{{ route('news.edit', $n->newsId) }}" class="btn btn-sm text-white">Edit</a></span>
        <span class="badge text-bg-danger">
          <form action="{{ route('news.destroy', $n->newsId) }}" method="POST">
              @csrf
              @method('DELETE')
              <button type="submit" class="btn btn-sm text-white">Hapus</button>
          </form>
        </span>
      </td>
    </tr>
    <?php $no++; ?>
     @endforeach
  </tbody>
</table>
{!!$news->withQueryString()->links('pagination::bootstrap-5')!!}
<span class="badge text-bg-dark"><a href="{{ route('news.index-pdf') }}" class="btn btn-sm text-white">Cetak PDF</a></span>
</div>
@endsection