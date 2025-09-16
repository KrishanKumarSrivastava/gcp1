<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Ecommerce\Forms\VehicleVariantForm;
use Botble\Ecommerce\Http\Requests\VehicleVariantRequest;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Ecommerce\Tables\VehicleVariantTable;
use Illuminate\Http\Request;

class VehicleVariantController extends BaseController
{
    public function index(VehicleVariantTable $dataTable)
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-variants.name'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-variants.create'));

        return VehicleVariantForm::create()->renderForm();
    }

    public function store(VehicleVariantRequest $request)
    {
        $vehicleVariant = VehicleVariant::query()->create($request->validated());

        event(new CreatedContentEvent(VEHICLE_VARIANT_MODULE_SCREEN_NAME, $request, $vehicleVariant));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-variants.index')
            ->setNextRoute('vehicle-variants.edit', $vehicleVariant->getKey())
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(VehicleVariant $vehicleVariant)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $vehicleVariant->name]));

        return VehicleVariantForm::createFromModel($vehicleVariant)->renderForm();
    }

    public function update(VehicleVariantRequest $request, VehicleVariant $vehicleVariant)
    {
        $vehicleVariant->fill($request->validated());
        $vehicleVariant->save();

        event(new UpdatedContentEvent(VEHICLE_VARIANT_MODULE_SCREEN_NAME, $request, $vehicleVariant));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-variants.index')
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(VehicleVariant $vehicleVariant)
    {
        return DeleteResourceAction::make($vehicleVariant);
    }
}