<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\Kategori;
use App\Models\suhukelembapan;
use App\Models\Unit;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $user = User::count();
        $kategori = Kategori::count();
        $unit = Unit::count();
        $barang = Barang::count();

        $data = suhukelembapan::select('id','created_at')->get()->groupBy(function($data){
            return Carbon::parse($data->created_at)->format('M');
        });
        $months = [];
        $monthCount = [];

        foreach ($data as $month => $values) {
            $months[] = $month;
            $monthCount[] = count($values);
        }

        return view('home', compact(['user','kategori','unit','barang','data','months','monthCount']));
    }

    public function dashboard()
    {
        return view('layouts.template');
    }
}
