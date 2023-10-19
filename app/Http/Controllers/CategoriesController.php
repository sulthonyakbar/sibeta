<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Categories;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $search = $request->query('search');

        if (!empty($request)) {
            $category = Categories::where('category_name', 'like', '%' . $search . '%')->paginate(5);
        } else {
            $category = Categories::paginate(5);
        }

        return view('categories.index', ['category' => $category, 'title' => 'Data Category | SiBeta']);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('categories.create', ['title' => 'Tambah Data Category | SiBeta']);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Categories::create([
            'category_name'=>$request->category_name
        ]);
        return redirect('/categories')->with('success', 'News created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $category = Categories::where('categoryId',$id)->get();
        return view ('categories.edit', ['category' => $category], ['title' => 'Edit Data Category | SiDesa']);  
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        Categories::where('categoryId', $request->categoryId)->update([
            'category_name'=>$request->category_name
        ]);
        return redirect('/categories')->with('success', 'News updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Categories::where('categoryId',$id)->delete();
        return redirect('/categories');
    }
}
