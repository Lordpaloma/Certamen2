<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PartidoRequest extends FormRequest
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
            'campeonato_id' => ['required'],
            'fecha' => ['required', 'min:9'],
        ];
    }

    public function messages(): array
    {
        return [
            'campeonato_id.required' => 'Indique Id de campeonato',
            'fecha.required' => 'Indique fecha',
            'fecha.min' => 'Fecha inválida',
        ];
    }
}