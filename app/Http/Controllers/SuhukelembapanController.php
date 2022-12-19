<?php

namespace App\Http\Controllers;

use App\Models\suhukelembapan;
use Illuminate\Http\Request;

class SuhukelembapanController extends Controller
{
    public function index()
    {
        $suhu = suhukelembapan::all();
        $c_suhu = count($suhu);
        return view('suhu.index', compact(['suhu','c_suhu']));
    }

    public function store(Request $request)
    {
        suhukelembapan::create($request->except(['_token','submit']));
        return back();
    }

    public function edit(Request $request, $id)
    {
        $suhu = suhukelembapan::all();
        $c_suhu = count($suhu);
        $edit_suhu = suhukelembapan::find($id);
        return view('suhu.edit', compact(['suhu','c_suhu','edit_suhu']));
    }

    public function update(Request $request, $id)
    {
        $suhu = suhukelembapan::find($id);
        $suhu->update($request->except(['_token','submit']));
        return redirect('/suhu');
    }

    public function delete(Request $request, $id)
    {
        $suhu = suhukelembapan::find($id);
        $suhu->delete();
        return redirect('/suhu');
    }
}
