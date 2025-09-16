<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Ecommerce\Forms\VehicleYearForm;
use Botble\Ecommerce\Http\Requests\VehicleYearRequest;
use Botble\Ecommerce\Models\VehicleYear;
use Botble\Ecommerce\Tables\VehicleYearTable;
use Illuminate\Http\Request;

class VehicleYearController extends BaseController
{
    public function index(VehicleYearTable $dataTable)
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-years.name'));

        return $dataTable->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/ecommerce::vehicle-years.create'));

        return VehicleYearForm::create()->renderForm();
    }

    public function store(VehicleYearRequest $request)
    {
        $vehicleYear = VehicleYear::query()->create($request->validated());

        event(new CreatedContentEvent(VEHICLE_YEAR_MODULE_SCREEN_NAME, $request, $vehicleYear));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-years.index')
            ->setNextRoute('vehicle-years.edit', $vehicleYear->getKey())
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(VehicleYear $vehicleYear)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $vehicleYear->year]));

        return VehicleYearForm::createFromModel($vehicleYear)->renderForm();
    }

    public function update(VehicleYearRequest $request, VehicleYear $vehicleYear)
    {
        $vehicleYear->fill($request->validated());
        $vehicleYear->save();

        event(new UpdatedContentEvent(VEHICLE_YEAR_MODULE_SCREEN_NAME, $request, $vehicleYear));

        return $this
            ->httpResponse()
            ->setPreviousRoute('vehicle-years.index')
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(VehicleYear $vehicleYear)
    {
        return DeleteResourceAction::make($vehicleYear);
    }
}