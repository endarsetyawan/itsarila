@extends('layouts.template')
@section('title', 'Data Unit')

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
                    <form class="forms-sample" action="/unit/store" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="nama">Nama Unit</label>
                            <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama Unit" />
                        </div>
                        <div class="form-group">
                            <label for="keterangan">Keterangan</label>
                            <textarea class="form-control" name="keterangan" id="keterangan" rows="4" placeholder="Keterangan"></textarea>
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
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Keterangan</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($c_unit == 0)
                                        <tr>
                                            <td colspan="4" align="center"><b>Data Masih Kosong</b></td>
                                        </tr>
                                    @else                                        
                                        @foreach ($unit as $data)  
                                            <tr>
                                                <td>{{ $data->id }}</td>
                                                <td>{{ $data->nama }}</td>
                                                <td>{{ $data->keterangan }}</td>
                                                <td>
                                                    <div class="row">
                                                        <div>
                                                            <a href="/unit/{{ $data->id }}/edit" class="btn btn-primary btn-rounded "><i class="mdi mdi-tooltip-edit btn-icon-prepend"></i></a>
                                                        </div>
                                                        <div>
                                                            <form action="/unit/{{ $data->id }}/delete" method="post">
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
