<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class VehicleVariantRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:250'],
            'slug' => [
                'required', 
                'string', 
                'max:120',
                Rule::unique('ec_vehicle_variants', 'slug')->ignore($this->route('vehicle_variant'))
            ],
            'year_id' => ['required', 'integer', Rule::exists('ec_vehicle_years', 'id')],
            'description' => ['nullable', 'string', 'max:100000'],
            'engine_type' => ['nullable', 'string', 'max:100'],
            'fuel_type' => ['nullable', 'string', 'max:100'],
            'transmission' => ['nullable', 'string', 'max:100'],
            'body_type' => ['nullable', 'string', 'max:100'],
            'order' => ['nullable', 'integer', 'min:0', 'max:10000'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}