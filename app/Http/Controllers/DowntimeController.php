<?php

namespace App\Http\Controllers;

use App\Models\Downtime;
use Illuminate\Http\Request;
use App\Models\Karyawan;
use App\Models\Unit;

class DowntimeController extends Controller
{
    public function index()
    {
        $karyawan = Karyawan::all();
        $unit = Unit::all();
        return view('downtime.pelaporan', compact(['karyawan','unit']));
    }

    public function store(Request $request)
    {
        Downtime::create($request->except(['_token','submit']));
        return back();
    }
}
