<?php

namespace App\Http\Controllers;

use App\Http\Requests\OpportunityStore;
use App\Http\Resources\OpportunityCollection;
use App\Http\Resources\Opportunity as OpportunityResource;
use App\Models\Models\Opportunity;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class OpportunityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return OpportunityCollection
     */
    public function index()
    {
        return new OpportunityCollection(Opportunity::orderBy('id', 'desc')->paginate(10));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(OpportunityStore $request)
    {
        return Opportunity::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param Opportunity $opportunity
     * @return OpportunityResource
     */
    public function show(Opportunity $opportunity)
    {
        return new OpportunityResource($opportunity);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Opportunity $opportunity
     * @return Opportunity|Application|ResponseFactory|Response
     */
    public function update(Request $request, Opportunity $opportunity)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'string|max:255',
            'category_id' => 'numeric',
            'country_id' => 'numeric',
            'deadline' => 'date',
            'organizer' => 'string|max:255',
            'created_by' => 'numeric',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        $opportunity->update($request->all());

        return $opportunity;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Opportunity $opportunity
     * @return Response
     */
    public function destroy(Opportunity $opportunity)
    {
        //
    }
}
