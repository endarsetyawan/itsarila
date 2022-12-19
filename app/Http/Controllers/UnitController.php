<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    public function index()
    {
        $unit = Unit::all();
        $c_unit = count($unit);
        return view('unit.index', compact(['unit','c_unit']));
    }

    public function store(Request $request)
    {
        $unit = Unit::create($request->except(['_token','submit']));
        return back();
    }

    public function edit(Request $request, $id)
    {
        $unit = Unit::all();
        $c_unit = count($unit);
        $edit_unit = Unit::find($id);
        return view('unit.edit', compact(['unit','c_unit','edit_unit']));
    }

    public function update(Request $request, $id)
    {
        $unit = Unit::find($id);
        $unit->update($request->except(['_token','submit']));
        return redirect('/unit');
    }

    public function delete(Request $request, $id)
    {
        $unit = Unit::find($id);
        $unit->delete();
        return redirect('/unit');
    }
}
