@extends('navbar')

@section('content')

<div class="row justify-content-center mt-3">
<div class="col-md-8">
    <div class="card">

    <div class="card-header">
        <h3 class="mt-3 mb-3">Edit Data Category</h3>
    </div>

    <div class="card-body">
    @foreach($category as $c)
    <form action="{{ route('categories.update', $c->categoryId) }}"" method="post">
        {{csrf_field()}}
        @method('PUT')
        <input type="hidden" name="categoryId" value="{{$c->categoryId}}">
        <div class="mb-3">
            <label for="category_name" class="form-label">Category Name</label>
            <input type="text" class="form-control" name="category_name" id="category_name" value="{{$c->category_name}}">
        </div>
        <a class="btn btn-success" href="/categories" role="button">Kembali</a>
        <button type="submit" class="btn btn-primary">Ubah</button>
    </form>
    @endforeach
    </div>
</div>
</div>
</div>
@endsection