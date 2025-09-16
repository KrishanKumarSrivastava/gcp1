<?php

namespace Botble\Ecommerce\Forms;

use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Http\Requests\VehicleYearRequest;
use Botble\Ecommerce\Models\VehicleModel;
use Botble\Ecommerce\Models\VehicleYear;

class VehicleYearForm extends FormAbstract
{
    public function setup(): void
    {
        $models = VehicleModel::query()
            ->published()
            ->with('make')
            ->get()
            ->mapWithKeys(function ($model) {
                return [$model->id => $model->make->name . ' - ' . $model->name];
            })
            ->all();

        $yearOptions = [];
        $currentYear = (int) date('Y');
        for ($year = $currentYear + 2; $year >= 1900; $year--) {
            $yearOptions[$year] = (string) $year;
        }

        $this
            ->setupModel(new VehicleYear())
            ->setValidatorClass(VehicleYearRequest::class)
            ->withCustomFields()
            ->add('year', SelectField::class, SelectFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-years.year'))
                ->choices($yearOptions)
                ->required()
                ->searchable()
                ->toArray()
            )
            ->add('model_id', SelectField::class, SelectFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-years.model'))
                ->choices($models)
                ->required()
                ->searchable()
                ->toArray()
            )
            ->add('description', EditorField::class, ContentFieldOption::make()
                ->label(trans('core/base::forms.description'))
                ->placeholder(trans('core/base::forms.description_placeholder'))
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