<?php

namespace Botble\Ecommerce\Forms;

use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\OnOffFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\OnOffField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Ecommerce\Http\Requests\VehicleMakeRequest;
use Botble\Ecommerce\Models\VehicleMake;

class VehicleMakeForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->setupModel(new VehicleMake())
            ->setValidatorClass(VehicleMakeRequest::class)
            ->withCustomFields()
            ->add('name', TextField::class, NameFieldOption::make()->required()->toArray())
            ->add('slug', TextField::class, TextFieldOption::make()
                ->label(trans('core/base::forms.slug'))
                ->placeholder(trans('core/base::forms.slug_placeholder'))
                ->maxLength(120)
                ->toArray()
            )
            ->add('description', EditorField::class, ContentFieldOption::make()
                ->label(trans('core/base::forms.description'))
                ->placeholder(trans('core/base::forms.description_placeholder'))
                ->toArray()
            )
            ->add('logo', MediaImageField::class, MediaImageFieldOption::make()
                ->label(trans('plugins/ecommerce::vehicle-makes.logo'))
                ->toArray()
            )
            ->add('order', TextField::class, TextFieldOption::make()
                ->label(trans('core/base::forms.order'))
                ->placeholder(trans('core/base::forms.order_by_placeholder'))
                ->defaultValue(0)
                ->toArray()
            )
            ->add('is_featured', OnOffField::class, OnOffFieldOption::make()
                ->label(trans('core/base::forms.is_featured'))
                ->defaultValue(false)
                ->toArray()
            )
            ->add('status', 'customSelect', StatusFieldOption::make()->toArray())
            ->setBreakFieldPoint('status');
    }
}