@extends('navbar')

@section('content')

<div class="row justify-content-center mt-3">
<div class="col-md-8">
    <div class="card">

    <div class="card-header">
        <h3 class="mt-3 mb-3">Edit Data News</h3>
    </div>

    <div class="card-body">
    @foreach($news as $n)
    <form action="{{ route('news.update', $n->newsId) }}" method="post">
        {{csrf_field()}}
        @method('PUT')
        <input type="hidden" name="newsId" value="{{$n->newsId}}">
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" name="title" id="title" value="{{$n->title}}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea class="form-control" name="content" id="content"  cols="30" rows="30">{{ $n->content }}</textarea>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input type="file" class="form-control" name="image" id="image">
            @if ($n->image)
                <img src="{{ asset('images/' . $n->image) }}" alt="Image" width="100%" height="400" class="mt-3">
            @else
                <p>No image selected</p>
            @endif
        </div>
        <div class="mb-3">
            <label for="category_name" class="form-label">Category</label>
            <select class="form-control" name="categoryId" id="category_name" required>
                <option value="">Pilih Category</option>
                @foreach ($category as $item)
                    <option value="{{ $item->categoryId }}" @if ($item->categoryId == $news[0]->categoryId) selected @endif>{{ $item->category_name }}</option>
                @endforeach
            </select>
        </div>

        <input type="hidden" name="userId" value="{{ auth()->user()->id }}">

        <a class="btn btn-success" href="/news" role="button">Kembali</a>
        <button type="submit" class="btn btn-primary">Ubah</button>
    </form>
    @endforeach
    </div>
</div>
</div>
</div>
@endsection