<?php

namespace Botble\Ecommerce\Forms;

use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Http\Requests\VehicleVariantRequest;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Ecommerce\Models\VehicleYear;

class VehicleVariantForm extends FormAbstract
{
    public function setup(): void
    {
        $years = VehicleYear::query()
            ->published()
            ->with(['model.make'])
            ->get()
            ->mapWithKeys(function ($year) {
                return [$year->id => $year->model->make->name . ' - ' . $year->model->name . ' - ' . $year->year];
            })
            ->all();

        $this
            ->setupModel(new VehicleVariant())
            ->setValidatorClass(VehicleVariantRequest::class)
            ->withCustomFields()
            ->add('name', TextField::class, NameFieldOption::make()->required()->toArray())
            ->add('slug', TextField::class, TextFieldOption::make()
                ->label(trans('core/base::forms.slug'))
                ->placeholder(trans('core/base::forms.slug_placeholder'))
                ->maxLength(120)
                ->toArray()
            )
            ->add('year_id', SelectField::class, SelectFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-variants.year'))
                ->choices($years)
                ->required()
                ->searchable()
                ->toArray()
            )
            ->add('description', EditorField::class, ContentFieldOption::make()
                ->label(trans('core/base::forms.description'))
                ->placeholder(trans('core/base::forms.description_placeholder'))
                ->toArray()
            )
            ->add('engine_type', TextField::class, TextFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-variants.engine_type'))
                ->placeholder(trans('plugins/ecommerce::vehicle-variants.engine_type_placeholder'))
                ->toArray()
            )
            ->add('fuel_type', TextField::class, TextFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-variants.fuel_type'))
                ->placeholder(trans('plugins/ecommerce::vehicle-variants.fuel_type_placeholder'))
                ->toArray()
            )
            ->add('transmission', TextField::class, TextFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-variants.transmission'))
                ->placeholder(trans('plugins/ecommerce::vehicle-variants.transmission_placeholder'))
                ->toArray()
            )
            ->add('body_type', TextField::class, TextFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-variants.body_type'))
                ->placeholder(trans('plugins/ecommerce::vehicle-variants.body_type_placeholder'))
                ->toArray()
            )
            ->add('order', TextField::class, TextFieldOption::make()
                ->label(trans('core/base::forms.order'))
                ->placeholder(trans('core/base::forms.order_by_placeholder'))
                ->defaultValue(0)
                ->toArray()
            )
            ->add('status', 'customSelect', StatusFieldOption::make()->toArray())
            ->setBreakFieldPoint('status');
    }
}