<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Quote;

class QuoteController extends Controller
{
    public function postQuote(Request $request)
    {
       	$quote = new Quote();
        $quote->content = $request->input('content');
        $quote->save();
        return response()->json(['quote' => $quote], 201);
    }

    public function getQuotes()
    {
        $quotes = Quote::all();
        $response = [
            'quotes' => $quotes
        ];
        return response()->json($response, 200);
    }

    public function putQuote(Request $request, $id)
    {
        $quote = Quote::find($id);
		// check if quote is not found
        if(!$quote)
        {
            return response()->json(['message' => 'Quote not found'], 404);
        }
		$quote->content = $request->input('content');
		$quote->save();
        return response()->json(['quote' => $quote], 200);
    }

    public function deleteQuote($id)
    {
        $quote = Quote::find($id);
        $quote->delete();
        return response()->json(['message' => 'Quote deleted'], 200);
    }
}
