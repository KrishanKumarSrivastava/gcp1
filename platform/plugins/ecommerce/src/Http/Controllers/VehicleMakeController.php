<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Ecommerce\Forms\VehicleMakeForm;
use Botble\Ecommerce\Http\Requests\VehicleMakeRequest;
use Botble\Ecommerce\Models\VehicleMake;
use Botble\Ecommerce\Tables\VehicleMakeTable;
use Illuminate\Http\Request;

class VehicleMakeController extends BaseController
{
    public function index(VehicleMakeTable $dataTable)
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-makes.name'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-makes.create'));

        return VehicleMakeForm::create()->renderForm();
    }

    public function store(VehicleMakeRequest $request)
    {
        $vehicleMake = VehicleMake::query()->create($request->validated());

        event(new CreatedContentEvent(VEHICLE_MAKE_MODULE_SCREEN_NAME, $request, $vehicleMake));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-makes.index')
            ->setNextRoute('vehicle-makes.edit', $vehicleMake->getKey())
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(VehicleMake $vehicleMake)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $vehicleMake->name]));

        return VehicleMakeForm::createFromModel($vehicleMake)->renderForm();
    }

    public function update(VehicleMakeRequest $request, VehicleMake $vehicleMake)
    {
        $vehicleMake->fill($request->validated());
        $vehicleMake->save();

        event(new UpdatedContentEvent(VEHICLE_MAKE_MODULE_SCREEN_NAME, $request, $vehicleMake));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-makes.index')
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(VehicleMake $vehicleMake)
    {
        return DeleteResourceAction::make($vehicleMake);
    }
}