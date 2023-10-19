<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoriesController;
use Dompdf\Dompdf;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group(['middleware' => 'guest'], function () {
    Route::get('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/login', [AuthController::class, 'loginPost'])->name('login');
});

Route::group(['middleware' => 'auth'], function () {
    Route::delete('/logout', [AuthController::class, 'logout'])->name('logout');

    Route::get('news', [NewsController::class, 'index'])->name('news.index');

    Route::get('news/cetak-pdf', [NewsController::class, 'cetakPDF'])->name('news.index-pdf');

    Route::get('news/{newsId}/detail', [NewsController::class, 'detail'])->name('news.detail');

    Route::get('news/create', [NewsController::class, 'create'])->name('news.create');
    Route::post('news/store', [NewsController::class, 'store'])->name('news.store');
    
    Route::get('news/{newsId}/edit', [NewsController::class, 'edit'])->name('news.edit');
    Route::put('news/{newsId}', [NewsController::class, 'update'])->name('news.update');
    
    Route::delete('news/{newsId}', [NewsController::class, 'destroy'])->name('news.destroy');

    Route::get('categories', [CategoriesController::class, 'index'])->name('categories.index');

    Route::get('categories/{categoryId}/detail', [CategoriesController::class, 'detail'])->name('categories.detail');

    Route::get('categories/create', [CategoriesController::class, 'create'])->name('categories.create');
    Route::post('categories/store', [CategoriesController::class, 'store'])->name('categories.store');
    
    Route::get('categories/{categoryId}/edit', [CategoriesController::class, 'edit'])->name('categories.edit');
    Route::put('categories/{categoryId}', [CategoriesController::class, 'update'])->name('categories.update');
    
    Route::delete('categories/{categoryId}', [CategoriesController::class, 'destroy'])->name('categories.destroy');
});

Route::get('/', [NewsController::class, 'show'])->name('news.show');
Route::get('/{id}/detail', [NewsController::class, 'detailGuest'])->name('guest.detail');


