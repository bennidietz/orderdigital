<?php

namespace App\Http\Controllers;

use App\Http\Resources\QuestionCollection;
use App\Models\Models\Question;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return QuestionCollection
     */
    public function index()
    {
        return new QuestionCollection(Question::paginate(10));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'question' => 'required|string',
            'created_by' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        return Question::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Question $question
     * @return Question|Application|ResponseFactory|Response
     */
    public function update(Request $request, Question $question)
    {
        $validator = Validator::make($request->all(), [
           'question' => 'string',
           'created_by' => 'numeric',
        ]);

        if ($validator->fails()) {
            return response(['errors' => $validator->errors()], 422);
        }

        $question->update($request->all());

        return $question;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Question $Question
     * @return Response
     */
    public function destroy(Question $Question)
    {
        //
    }
}
