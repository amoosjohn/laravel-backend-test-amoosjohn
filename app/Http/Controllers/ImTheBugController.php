<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class ImTheBugController extends Controller
{
    /**
     * @return Application|Factory|View
     */
    public function bugHouse(): View
    {
        return view('bug');
    }

    /**
     * @param Request $request
     * @return string
     * @throws ValidationException
     */
    public function uploadFile(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|file'
        ]);
        return 'No need to upload the file';
    }

    /**
     * @param Request $request
     * @return Application|Factory|View
     */
    public function uploadFileView(Request $request)
    {
        return view('uploadFile');
    }
}
