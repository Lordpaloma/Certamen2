<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EquipoRequest extends FormRequest
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
            'nombre' => ['required', 'alpha', 'min:3', 'max:30'],
            'acronimo' => ['required', 'min:1', 'max:3'],
            'entrenador' => ['required', 'min:3', 'max:20'],
        ];
    }

    public function messages(): array
    {
        return [
            'nombre.required' => 'Indique el nombre del equipo',
            'nombre.alpha' => 'El nombre debe solo letras',
            'nombre.min' => 'El nombre debe tener mínimo 3 letras',
            'nombre.max' => 'El nombre debe tener máximo 30 letras',
            'acronimo.required' => 'Indique el acronimo del equipo',
            'acronimo.min' => 'El acronimo debe tener mínimo 1 letras',
            'acronimo.max' => 'El acronimo debe tener máximo 3 letras',
            'entrenador.required' => 'Indique el acronimo del equipo',
            'entrenador.min' => 'El acronimo debe tener mínimo 3 letras',
            'entrenador.max' => 'El acronimo debe tener máximo 20 letras',
        ];
    }
}