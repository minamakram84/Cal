<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
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
     * 'name', 'email', 'password','registerType', 'vendorUserID', 'phone', 'address', 'bDate', 
       * 'homePhone', 'officePhone', 'description', 'info', 'img', 'SPID'
     * @return array
     */
    public function rules()
    {
        return [
            'name' =>'required',
            'email' =>'nullable|email',
            'password' =>'nullable',
            'registerType' =>'nullable',
            'vendorUserID' =>'nullable',
            'phone' =>'nullable',
            'address' =>'nullable',
            'bDate' =>'nullable|date',
            'homePhone' =>'nullable',
            'description' =>'nullable',
            'info' =>'nullable',
            'img' =>'nullable',
            'SPID' =>'required_without:id',

        ];
    }
}
