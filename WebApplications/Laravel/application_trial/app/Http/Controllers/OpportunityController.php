<?php

namespace App\Http\Controllers;

use App\Http\Requests\OpportunityStore;
use App\Http\Resources\OpportunityCollection;
use App\Models\Models\Opportunity;
use Illuminate\Http\Request;

class OpportunityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return OpportunityCollection
     */
    public function index()
    {
        return new OpportunityCollection(Opportunity::paginate(10));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OpportunityStore $request)
    {
//        $validator = $request->validate([
//           'title' => 'required|string|max:255',
//           'description' => 'required',
//        ]);
        return "Testing data";
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Models\Opportunity  $opportunity
     * @return Opportunity
     */
    public function show(Opportunity $opportunity)
    {
        return $opportunity;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Models\Opportunity  $opportunity
     * @return \Illuminate\Http\Response
     */
    public function edit(Opportunity $opportunity)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Models\Opportunity  $opportunity
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Opportunity $opportunity)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Models\Opportunity  $opportunity
     * @return \Illuminate\Http\Response
     */
    public function destroy(Opportunity $opportunity)
    {
        //
    }
}
