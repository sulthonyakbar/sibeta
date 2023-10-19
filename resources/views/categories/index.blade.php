@extends('navbar')

@section('content')
<div class="container">

  <h5 class="mt-3"> Selamat Datang,<b> {{ Auth::user()->email }} </b></h5>

    <h3 class="mt-3">Data Category</h3>

    <a class="btn btn-primary btn-sm mt-3" href="{{ route('categories.create') }}" role="button">+ Tambah Data Category</a>

    <form class="d-flex mt-3" role="search" method="get">
      <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>

<table class="table mt-3">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Category Name</th>
      <th scope="col">Opsi</th>
    </tr>
  </thead>
  <tbody>
        <?php $no=1 + (($category->currentPage() - 1 ) * $category->perPage()); ?>
        @foreach($category as $c)
    <tr>
      <th scope="row">{{$no}}</th>
      <td>{{$c->category_name}}</td>
      <td>
        <span class="badge text-bg-info"><a href="{{ route('categories.edit', $c->categoryId) }}" class="btn btn-sm text-white">Edit</a></span>
        <span class="badge text-bg-danger">
          <form action="{{ route('categories.destroy', $c->categoryId) }}" method="POST">
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
{!!$category->withQueryString()->links('pagination::bootstrap-5')!!}
</div>
@endsection