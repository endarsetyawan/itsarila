<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Karyawan extends Model
{
    protected $table = 'karyawans';
    protected $fillable = ['id','nik','nama_karyawan','tmp_lahir','tgl_lahir','gender','pendidikan','agama','status_nikah','no_hp','status_karyawan','tgl_masuk_kerja','tgl_keluar_kerja','bpjs_ketenagakerjaan','bpjs_kesehatan','tgl_purna','sik','exp_sik','str','exp_str','id_unit_kerja','alamat'];
}
