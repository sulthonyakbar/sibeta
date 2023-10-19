<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;

    protected $primaryKey = 'newsId';

    protected $fillable = [
        'title',
        'content',
        'image',
        'categoryId',
        'userId'
    ];

    public function category()
    {
        return $this->belongsTo(Categories::class, 'categoryId', 'categoryId');
    }
}   
