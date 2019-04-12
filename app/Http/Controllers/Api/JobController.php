<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Http\Models\Jobs;
use App\Http\Resources\Job as JobResource;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new JobResource(Jobs::All());
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
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string'],
            'description' => ['required', 'string'],
            'wage_amount' => ['required'],
            'currency' => ['required']
        ]);

        return Jobs::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'wage_amount' => $request->input('wage_amount'),
            'currency' => $request->input('currency')
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // var_dump($request);
        $request->validate([
            'name' => ['required', 'string'],
            'description' => ['required', 'string'],
            'wage_amount' => ['required'],
            'currency' => ['required']
        ]);

        $job = Jobs::find($id);

        $job->name = $request->input('name');
        $job->description = $request->input('description');
        $job->wage_amount = $request->input('wage_amount');
        $job->currency = $request->input('currency');
        $job->save();
        return response()->json(['job' => $job], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $job = Jobs::find($id);
        $job->delete();
        return response()->json(['message' => 'Job deleted'], 200);
    }
}
