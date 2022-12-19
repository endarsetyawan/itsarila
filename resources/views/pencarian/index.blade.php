@extends('layouts.template')
@section('title', 'Pencarian')

@section('content')
    <div class="page-header flex-wrap">
        <h3 class="mb-0"> @yield('title')</h3>
    </div>
    <div class="row justify-content-center">
        <div class="col-xl-5 stretch-card grid-margin d-flex">
            <div class="card">
                <div class="card-body">
                    <div class="row d-flex justify-content-center">
                        <div class="">
                            <h5>Scan Barcode</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div id="reader" width="600px"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-xl-12 stretch-card grid-margin d-flex">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <table>
                            <tr>
                                <td><label for="">Kode Barang</label></td>
                                <td> :</td>
                                <td><input type="text" id="hasil-barcode"></td>
                            </tr>
                            <tr>
                                <td><label for="">Nama Barang</label></td>
                                <td> :</td>
                                <td><label for="">KOMPUTER</label></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
