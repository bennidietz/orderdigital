<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\OpportunityController;
use App\Http\Controllers\QuestionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/test', function (Request $request) {
    return "This is the API part of Laravel";
});

Route::prefix('auth')->group(function () {
    // api/auth/register
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:api');
    Route::get('user', [AuthController::class, 'user'])->middleware('auth:api');
    Route::get('authentication-failed', [AuthController::class, 'authFailed'])->name('auth-failed');
});

Route::group(['prefix' => 'lookups', 'middleware' => 'auth:api'], function () {
    Route::resource('category', CategoryController::class);
    Route::resource('country', CountryController::class);
});

Route::group(['middleware' => 'auth:api'], function () {

    // Opportunities
    Route::resource('opportunity', OpportunityController::class);

    // Questions
    Route::get('questions', [QuestionController::class, 'index']);
    Route::post('question', [QuestionController::class, 'store']);
    Route::put('questions/{question}', [QuestionController::class, 'update']);

    // Favorites
    Route::get('favorites', [FavoriteController::class, 'index']);
    Route::post('favorite', [FavoriteController::class, 'store']);
    Route::put('favorites/{favorite}', [FavoriteController::class, 'update']);

    //TODO: uplaod images for opportunities and forum
});
