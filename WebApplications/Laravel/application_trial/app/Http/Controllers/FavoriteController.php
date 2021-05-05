<?php

namespace App\Http\Controllers;

use App\Http\Resources\FavoriteCollection;
use App\Models\Models\Favorite;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class FavoriteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return FavoriteCollection
     */
    public function index()
    {
        return new FavoriteCollection(Favorite::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Application|ResponseFactory|Response|void
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|numeric',
            'opportunity_id' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        return Favorite::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Favorite $favorite
     * @return Favorite|Application|ResponseFactory|Response
     */
    public function update(Request $request, Favorite $favorite)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'numeric',
            'opportunity_id' => 'numeric',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        $favorite->update($request->all());

        return $favorite;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Favorite $favorite
     * @return Response
     */
    public function destroy(Favorite $favorite)
    {
        //
    }
}
