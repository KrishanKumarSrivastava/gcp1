<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class VehicleYearRequest extends Request
{
    public function rules(): array
    {
        return [
            'year' => [
                'required', 
                'integer', 
                'min:1900', 
                'max:' . (date('Y') + 2),
                Rule::unique('ec_vehicle_years', 'year')
                    ->where('model_id', $this->input('model_id'))
                    ->ignore($this->route('vehicle_year'))
            ],
            'model_id' => ['required', 'integer', Rule::exists('ec_vehicle_models', 'id')],
            'description' => ['nullable', 'string', 'max:100000'],
            'order' => ['nullable', 'integer', 'min:0', 'max:10000'],
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}