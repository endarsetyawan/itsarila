@extends('layouts.template')
@section('title', 'Edit Data Suhu & Kelembapan')

@section('content')
    <div class="page-header flex-wrap">
        <h3 class="mb-0"> @yield('title')</h3>
        <div class="d-flex">
            <button type="button" class="btn btn-sm bg-white btn-icon-text border">
                <i class="mdi mdi-email btn-icon-prepend"></i> Email </button>
            <button type="button" class="btn btn-sm bg-white btn-icon-text border ml-3">
                <i class="mdi mdi-printer btn-icon-prepend"></i> Print </button>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-3 stretch-card grid-margin">
            <div class="card">
                <div class="card-body">
                    <form class="forms-sample" action="/suhu/{{ $edit_suhu->id }}/update" method="POST">
                        @method('put')
                        @csrf
                        <div class="form-group">
                            <label for="suhu">Suhu</label>
                            <input type="text" class="form-control" name="suhu" id="suhu" value="{{ $edit_suhu->suhu }}" placeholder="Nama Unit" />
                        </div>
                        <div class="form-group">
                            <label for="kelembapan">Kelembapan</label>
                            <input type="text" class="form-control" name="kelembapan" id="kelembapan" value="{{ $edit_suhu->kelembapan }}" placeholder="Kelembapan" />
                        </div>
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-success mr-2"> Simpan </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-xl-9 stretch-card grid-margin">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-7">
                            <h5>@yield('title')</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">No</th>
                                        <th style="text-align: center">Suhu</th>
                                        <th style="text-align: center">Kelembapan</th>
                                        <th style="text-align: center">Tanggal</th>
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($c_suhu == 0)
                                        <tr>
                                            <td colspan="4" align="center"><b>Data Masih Kosong</b></td>
                                        </tr>
                                    @else                                        
                                        @foreach ($suhu as $data)  
                                            <tr>
                                                <td style="text-align: center">{{ $data->id }}</td>
                                                <td style="text-align: center">{{ $data->suhu }}</td>
                                                <td style="text-align: center">{{ $data->kelembapan }}</td>
                                                <td style="text-align: center">{{ date('d F Y', strtotime($data->created_at)) }}</td>
                                                <td>
                                                    <div class="row d-flex justify-content-center">
                                                        <div>
                                                            <a href="/suhu/{{ $data->id }}/edit" class="btn btn-primary btn-rounded "><i class="mdi mdi-tooltip-edit btn-icon-prepend"></i></a>
                                                        </div>
                                                        <div>
                                                            <form action="/suhu/{{ $data->id }}/delete" method="post">
                                                                @method('delete')
                                                                @csrf
                                                                <button type="submit" class="btn btn-danger btn-rounded"">
                                                                    <i class="mdi mdi-delete btn-icon-prepend"></i>
                                                                </button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
