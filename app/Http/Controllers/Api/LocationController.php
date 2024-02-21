<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Location;

class LocationController extends Controller
{
    /*
        @return json
    */
    public function index()
    {
        $locations = Location::with('company')->get();
        return response()->json(['data' => $locations]);
    }
}
