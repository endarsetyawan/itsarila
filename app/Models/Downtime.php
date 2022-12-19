<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Downtime extends Model
{
    protected $table = 'downtimes';
    protected $fillable = ['id','nama_pelapor','unit','selesai'];
}
