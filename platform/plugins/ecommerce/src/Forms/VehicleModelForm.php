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
use Botble\Ecommerce\Http\Requests\VehicleModelRequest;
use Botble\Ecommerce\Models\VehicleMake;
use Botble\Ecommerce\Models\VehicleModel;

class VehicleModelForm extends FormAbstract
{
    public function setup(): void
    {
        $makes = VehicleMake::query()
            ->published()
            ->ordered()
            ->pluck('name', 'id')
            ->all();

        $this
            ->setupModel(new VehicleModel())
            ->setValidatorClass(VehicleModelRequest::class)
            ->withCustomFields()
            ->add('name', TextField::class, NameFieldOption::make()->required()->toArray())
            ->add('slug', TextField::class, TextFieldOption::make()
                ->label(trans('core/base::forms.slug'))
                ->placeholder(trans('core/base::forms.slug_placeholder'))
                ->maxLength(120)
                ->toArray()
            )
            ->add('make_id', SelectField::class, SelectFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-models.make'))
                ->choices($makes)
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