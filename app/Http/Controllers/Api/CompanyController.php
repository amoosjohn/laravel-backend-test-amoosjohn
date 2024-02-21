<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Company;

class CompanyController extends Controller
{

    public function index()
    {
        $companies = Company::with('locations')->get();
        return response()->json(['data' => $companies]);
    }
}
