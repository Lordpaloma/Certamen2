<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class JugadorRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nickname' => ['required', 'min:3', 'max:20'],
            'pais' => ['required', 'min:5', 'max:50'],
            'equipo_id' => ['required'],
        ];
    }

    public function messages(): array
    {
        return [
            'nickname.required' => 'Indique el nickname del Jugador',
            'nickname.alpha' => 'El nickname debe solo letras',
            'nickname.min' => 'El nickname debe tener mínimo 3 letras',
            'nickname.max' => 'El nickname debe tener máximo 20 letras',
            'pais.required' => 'Indique el pais del Jugador',
            'pais.min' => 'El pais debe tener mínimo 1 letras',
            'pais.max' => 'El pais debe tener máximo 3 letras',
            'equipo_id.required' => 'Indique id_equipo',
        ];
    }
}