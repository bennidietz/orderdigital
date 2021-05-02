<?php

namespace App\Models\Models;

use App\Models\Models\Loopups\Category;
use App\Models\Models\Loopups\Country;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Opportunity extends Model
{
    use HasFactory;

    protected $casts= [
        'deadline' => 'datetime'
    ];

    public function detail() {
        return $this->hasOne(OpportunityDetail::class);
    }

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function country() {
        return $this->belongsTo(Country::class);
    }

    public function user() {
        return $this->belongsTo(User::class, 'created_by');
    }
}
