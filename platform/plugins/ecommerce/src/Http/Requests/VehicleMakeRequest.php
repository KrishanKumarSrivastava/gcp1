<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class VehicleMakeRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:250'],
            'slug' => [
                'required', 
                'string', 
                'max:120',
                Rule::unique('ec_vehicle_makes', 'slug')->ignore($this->route('vehicle_make'))
            ],
            'description' => ['nullable', 'string', 'max:100000'],
            'logo' => ['nullable', 'string', 'max:255'],
            'order' => ['nullable', 'integer', 'min:0', 'max:10000'],
            'is_featured' => ['sometimes', 'boolean'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}