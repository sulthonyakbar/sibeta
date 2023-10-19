<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\News;
use App\Models\Categories;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $search = $request->query('search');

        $news = News::join('categories', 'news.categoryId', '=', 'categories.categoryId')
                        ->select('news.*', 'categories.category_name');

        if (!empty($search)) {
            $news->where('news.title', 'like', '%' . $search . '%');
        }
                
        $news = $news->paginate(5);
                
        return view('news.index', ['news' => $news, 'title' => 'Data News | SiBeta']);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $category = Categories::all();
        return view('news.create', compact('category'), ['title' => 'Tambah Data News | SiBeta']);
    }

    /**
     * Store a newly created resource in storage.
     */

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'categoryId' => 'required',
            'userId' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');

            $storedPath = $image->store('images', 'public');

            $news = new News();
            $news->title = $request->title;
            $news->content = $request->content;
            $news->image = $storedPath;
            $news->categoryId = $request->categoryId;
            $news->userId = $request->userId;
            $news->save();
        }

        return redirect('/news')->with('success', 'News created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function detail($id)
    {
        $news = News::where('newsId', $id)->first();
        return view ('news.detail', ['news' => $news], ['title' => 'Detail Data News | SiBeta']);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $news = News::where('newsId',$id)->get();
        $category = Categories::all();
        return view ('news.edit', ['news' => $news, 'category' => $category], ['title' => 'Edit Data news | SiBeta']);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'categoryId' => 'required',
            'userId' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
    
        $news = News::findOrFail($id);
        $news->title = $request->title;
        $news->content = $request->content;
        $news->categoryId = $request->categoryId;
        $news->userId = $request->userId;
    
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $storedPath = $image->store('images', 'public');
            $news->image = $storedPath;
        }
    
        $news->save();
    
        return redirect('/news')->with('success', 'News updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        News::where('newsId', $id)->delete();
        return redirect('/news');
    }

    public function show(Request $request)
    {
        $search = $request->query('search');
        $selectedCategory = $request->query('category');

        $category = Categories::all();

        $newsQuery = News::query();

        if ($search) {
            $newsQuery->where('title', 'like', '%'.$search.'%');
        }

        if ($selectedCategory) {
            $newsQuery->where('categoryId', $selectedCategory);
        }

        $news = $newsQuery->get();

        return view('guest.index', compact('news', 'category', 'selectedCategory'), ['title' => 'News | SiBeta']);
    }

    public function detailGuest($id)
    {
        $news = News::where('newsId', $id)->first();
        $category = Categories::all();
        return view ('guest.detail', ['news' => $news, 'category' => $category,], ['title' => $news->title]);
    }

    public function cetakPDF()
    {
    	$news = News::all();

        $pdf = Pdf::loadView('news.index-pdf', ['news' => $news])->setPaper('A4', 'portrait');
        
        return $pdf->download('laporan-news-'.Carbon::now()->timestamp.'.pdf');
    }
}
