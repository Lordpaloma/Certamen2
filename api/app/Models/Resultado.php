<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Resultado extends Model
{
    protected $table = 'resultados';
    public $timestamps = false;

    public function campeonato():BelongsTo
    {
        return $this->belongsTo(campeonato::class);
    }
}
