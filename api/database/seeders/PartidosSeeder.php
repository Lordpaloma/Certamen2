<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class PartidosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('equipos')->insert([
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1],
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1],
            ['fecha'=>Carbon::create('2024', '10', '21'),'campeonato_id'=>1,],
        ]);
}
}