<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use App\Models\Company;

class CompanyController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function index(): View
    {
        $companies = Company::withCount('locations')->simplePaginate(10);

        return view('companies.index',compact('companies'));
    }
}
