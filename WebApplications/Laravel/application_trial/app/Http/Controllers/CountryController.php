<?php

namespace App\Http\Controllers;

use App\Http\Resources\CountryCollection;
use App\Models\Models\Loopups\Country;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Resources\Lookups\Country as CountryResource;
use Illuminate\Support\Facades\Validator;

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return CountryCollection
     */
    public function index()
    {
        return new CountryCollection(Country::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = $this->validateInputs($request);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        return Country::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param Country $country
     * @return CountryResource
     */
    public function show(Country $country)
    {
        return new CountryResource($country);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Country $country
     * @return Response
     */
    public function edit(Country $country)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Country $country
     * @return Country|Application|ResponseFactory|Response
     */
    public function update(Request $request, Country $country)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'string|max:255',
            'phone_code' => 'string|max:5',
            'country_code' => 'string|max:5',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        $country->update($request->all());

        return $country;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Country $country
     * @return Response
     */
    public function destroy(Country $country)
    {
        //
    }

    private function validateInputs(Request $request) {
        return Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'phone_code' => 'required|string|max:5',
            'country_code' => 'required|string|max:5',
        ]);
    }
}
