<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Ecommerce\Forms\VehicleModelForm;
use Botble\Ecommerce\Http\Requests\VehicleModelRequest;
use Botble\Ecommerce\Models\VehicleModel;
use Botble\Ecommerce\Tables\VehicleModelTable;
use Illuminate\Http\Request;

class VehicleModelController extends BaseController
{
    public function index(VehicleModelTable $dataTable)
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-models.name'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-models.create'));

        return VehicleModelForm::create()->renderForm();
    }

    public function store(VehicleModelRequest $request)
    {
        $vehicleModel = VehicleModel::query()->create($request->validated());

        event(new CreatedContentEvent(VEHICLE_MODEL_MODULE_SCREEN_NAME, $request, $vehicleModel));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-models.index')
            ->setNextRoute('vehicle-models.edit', $vehicleModel->getKey())
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(VehicleModel $vehicleModel)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $vehicleModel->name]));

        return VehicleModelForm::createFromModel($vehicleModel)->renderForm();
    }

    public function update(VehicleModelRequest $request, VehicleModel $vehicleModel)
    {
        $vehicleModel->fill($request->validated());
        $vehicleModel->save();

        event(new UpdatedContentEvent(VEHICLE_MODEL_MODULE_SCREEN_NAME, $request, $vehicleModel));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-models.index')
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(VehicleModel $vehicleModel)
    {
        return DeleteResourceAction::make($vehicleModel);
    }
}