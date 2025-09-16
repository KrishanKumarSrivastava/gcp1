<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class VehicleModelRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:250'],
            'slug' => [
                'required', 
                'string', 
                'max:120',
                Rule::unique('ec_vehicle_models', 'slug')->ignore($this->route('vehicle_model'))
            ],
            'make_id' => ['required', 'integer', Rule::exists('ec_vehicle_makes', 'id')],
            'description' => ['nullable', 'string', 'max:100000'],
            'order' => ['nullable', 'integer', 'min:0', 'max:10000'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}