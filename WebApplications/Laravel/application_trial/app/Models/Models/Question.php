<?php

namespace App\Models\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    protected $fillable = [
        'question',
        'created_by',
    ];

    public function comments() {
        return $this->hasMany(Comment::class);
    }

    public function createdBy() {
        return $this->belongsTo(User::class, 'created_by');
    }
}
