<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\Kategori;
use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class BarangController extends Controller
{
    public function index()
    {
        $barang = Barang::select(
            'barangs.id',
            'barangs.kode_barang',
            'barangs.nama',
            'kat.nama as kategori',
            'uni.nama as lokasi',
            'barangs.merk',
            'barangs.keterangan'
        )
            ->LeftJoin('units as uni', 'uni.id', 'barangs.lokasi')
            ->LeftJoin('kategoris as kat', 'kat.id', 'barangs.kategori')->get();
        $c_barang = Barang::count();
        $kategori = Kategori::all();
        $unit = Unit::all();

        $kdplg = DB::table('barangs')->select(DB::raw('MAX(RIGHT(kode_barang,4)) as kode'));
        $kd = "";
        if ($kdplg->count()>0) {
            foreach($kdplg->get() as $k){
                $tmp = ((int)$k->kode)+1;
                $kd = sprintf("%04s", $tmp);
            }
        } else {
            $kd = "0001";
        }

        return view('barang.index', compact(['barang','c_barang','kd','kategori','unit']));
    }

    public function store(Request $request)
    {
        Barang::create($request->except(['_token','submit']));
        return back();
    }

    public function edit(Request $request, $id)
    {
        $barang = Barang::select(
            'barangs.id',
            'barangs.kode_barang',
            'barangs.nama',
            'kat.nama as kategori',
            'uni.nama as lokasi',
            'barangs.merk',
            'barangs.keterangan'
        )
            ->LeftJoin('units as uni', 'uni.id', 'barangs.lokasi')
            ->LeftJoin('kategoris as kat', 'kat.id', 'barangs.kategori')->get();
        $c_barang = Barang::count();
        $kategori = Kategori::all();
        $unit = Unit::all();
        $edit_barang = Barang::find($id);

        return view('barang.edit', compact(['barang','c_barang','kategori','unit','edit_barang']));
    }

    public function update(Request $request, $id)
    {
        $barang = Barang::find($id);
        $barang->update($request->except(['_token','submit']));
        
        return redirect('/barang');
    }

    public function delete(Request $request, $id)
    {
        $barang = Barang::find($id);
        $barang->delete();

        return redirect('/barang');
    }
}
