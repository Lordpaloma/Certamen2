<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Campeonato extends Model
{
    use HasFactory;
    protected $table = 'campeonatos';
    public $timestamps = false;

    public function Partidos(): HasMany{
        return $this->hasMany(Partido::class);
    }
    public function Reglas(): HasMany{
        return $this->hasMany(Reglas::class);
    }
    public function Premios(): HasMany{
        return $this->hasMany(Premios::class);
    }
    public function Resultado(): HasMany{
        return $this->hasMany(Resultado::class);
    }
}
