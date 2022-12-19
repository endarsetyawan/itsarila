@extends('layouts.template')
@section('title', 'Edit Data Barang')

@section('content')
    <div class="page-header flex-wrap">
        <h3 class="mb-0"> Edit Data {{ $edit_barang->nama }}</h3>
        <div class="d-flex">
            <button type="button" class="btn btn-sm bg-white btn-icon-text border">
                <i class="mdi mdi-email btn-icon-prepend"></i> Email </button>
            <button type="button" class="btn btn-sm bg-white btn-icon-text border ml-3">
                <i class="mdi mdi-printer btn-icon-prepend"></i> Print </button>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 stretch-card grid-margin">
            <div class="card">
                <div class="card-body">
                        <form class="forms-sample" action="/barang/{{ $edit_barang->id }}/update" method="POST">
                            @method('put')
                            @csrf
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="kode_barang">Kode Barang</label>
                                            <input type="text" class="form-control" name="kode_barang" id="kode_barang"
                                                value="{{ $edit_barang->kode_barang }}" placeholder="Kode Barang" readonly />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="lokasi">Lokasi</label>
                                            <select class="js-example-basic-single form-control" name="lokasi"
                                                id="lokasi" style="width: 100%;">
                                                @foreach ($unit as $data)
                                                    <option value="{{ $data->id }}" {{ $data->id == $edit_barang->lokasi ? 'selected' : '' }}>{{ $data->nama }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="nama">Nama</label>
                                            <input type="text" class="form-control" name="nama" id="nama"
                                                placeholder="Nama Barang" value="{{ $edit_barang->nama }}" />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="merk">Merk</label>
                                            <input type="text" class="form-control" name="merk" id="merk"
                                                placeholder="Merk" value="{{ $edit_barang->merk }}" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="kategori">Kategori</label>
                                            <select class="form-control js-example-basic-single" name="kategori"
                                                id="kategori">
                                                @foreach ($kategori as $data)
                                                    <option value="{{ $data->id }}" {{ $data->id == $edit_barang->kategori ? 'selected' : '' }}>{{ $data->nama }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="keterangan">Keterangan</label>
                                            <textarea class="form-control" name="keterangan" id="keterangan" rows="4" placeholder="Keterangan">{{ $edit_barang->keterangan }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-end">
                                <a href="/barang" class="btn btn-danger mr-2">Batal</a>
                                <button type="submit" class="btn btn-success mr-2"> Simpan </button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 stretch-card grid-margin">
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
                                        <th>Kode</th>
                                        <th>Nama</th>
                                        <th>Kategori</th>
                                        <th>Lokasi</th>
                                        <th>Merk</th>
                                        <th>Keterangan</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($c_barang == 0)
                                        <tr>
                                            <td colspan="7" align="center"><b>Data Masih Kosong</b></td>
                                        </tr>
                                    @else
                                        @foreach ($barang as $data)
                                            <tr>
                                                <td>{{ $data->kode_barang }}</td>
                                                <td>{{ $data->nama }}</td>
                                                <td>{{ $data->kategori }}</td>
                                                <td>{{ $data->lokasi }}</td>
                                                <td>{{ $data->merk }}</td>
                                                <td>{{ $data->keterangan }}</td>
                                                <td>
                                                    <div class="row">
                                                        <div>
                                                            <a href="/barang/{{ $data->id }}/edit"
                                                                class="btn btn-primary btn-rounded "><i
                                                                    class="mdi mdi-tooltip-edit btn-icon-prepend"></i></a>
                                                        </div>
                                                        <div>
                                                            <form action="/barang/{{ $data->id }}/delete"
                                                                method="post">
                                                                @method('delete')
                                                                @csrf
                                                                <button type="submit"
                                                                    class="btn btn-danger btn-rounded"">
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
