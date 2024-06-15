<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class Resultado extends Model
{
    protected $table = 'resultados';
    public $timestamps = false;

    public function Equipo():BelongsTo
    {
        return $this->belongsTo(Equipo::class);
    }
}
