<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    public function index()
    {
        $kategori = Kategori::all();
        $c_kategori = count($kategori);
        return view('kategori.index', compact(['kategori','c_kategori']));
    }

    public function store(Request $request)
    {
        Kategori::create($request->except(['_token','submit']));
        return back();
    }

    public function edit(Request $request, $id)
    {
        $kategori = Kategori::all();
        $c_kategori = count($kategori);
        $edit_kategori = Kategori::find($id);
        return view('kategori.edit', compact(['kategori','c_kategori','edit_kategori']));
    }

    public function update(Request $request, $id)
    {
        $kategori = Kategori::find($id);
        $kategori->update($request->except(['_token','submit']));
        return redirect('/kategori');
    }

    public function delete(Request $request, $id)
    {
        $kategori = Kategori::find($id);
        $kategori->delete();
        return redirect('/kategori');
    }
}
