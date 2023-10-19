@extends('navbar')

@section('content')

<div class="row justify-content-center mt-3">
<div class="col-md-8">
    <div class="card">

    <div class="card-header">
        <h3 class="card-title">Tambah Data News</h3>
    </div>
    
    <div class="card-body">
    <form action="{{ route('news.store') }}" method="post" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" name="title" id="title" required="required">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea class="form-control" name="content" id="content" cols="30" rows="30"></textarea>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input type="file" class="form-control" name="image" id="image" required="required">
        </div>
        <div class="mb-3">
            <label for="category_name" class="form-label">Category</label>
            <select class="form-control" name="categoryId" id="category_name" required>
                <option value="">Pilih Category</option>
            @foreach ($category as $item)
                <option value="{{ $item->categoryId }}">{{ $item->category_name }}</option>
            @endforeach
            </select>
        </div>

        <input type="hidden" name="userId" value="{{ Auth::user()->id }}">

        <a class="btn btn-success" href="/news" role="button">Kembali</a>
        <button type="submit" class="btn btn-primary">Tambah</button>
    </form>
    </div>
</div>
</div>
</div>
@endsection