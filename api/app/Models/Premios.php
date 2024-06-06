<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Premios extends Model
{
    use HasFactory;
    protected $table = 'premios';
    public $timestamps = false;

    public function campeonato():BelongsTo
    {
        return $this->belongsTo(campeonato::class);
    }
}
