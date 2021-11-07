<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StaffRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     * 'name', 'email', 'password','description', 'img', '	active', '	mobile', 'SPID'
     * @return array
     */
    public function rules()
    {
        return [
            'name' =>'required',
            'email' =>'nullable|email',
            'password' =>'nullable',
            'description' =>'nullable',
            'img' =>'nullable',
            'mobile' =>'nullable',
            'SPID' =>'required_without:id',

        ];
    }
}
