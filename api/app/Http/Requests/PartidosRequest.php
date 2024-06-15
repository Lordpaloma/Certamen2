<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PartidosRequest extends FormRequest
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
            'campeonato_id' => ['required',],
            'fecha' => ['required'],
            
        ];
    }

    public function messages(): array
    {
        return [
            'campeonato_id.required' => 'Indique la id del campeonato',
            'fecha.required' => 'Indique la fecha del partido',
        ];
    }
}