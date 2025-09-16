<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Ecommerce\Models\VehicleMake;
use Botble\Ecommerce\Models\VehicleModel;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Ecommerce\Models\VehicleYear;
use Illuminate\Http\Request;

class VehicleAjaxController extends BaseController
{
    public function getModels(Request $request)
    {
        $makeId = $request->input('make_id');
        
        if (!$makeId) {
            return $this->httpResponse()->setData([]);
        }

        $models = VehicleModel::query()
            ->where('make_id', $makeId)
            ->published()
            ->ordered()
            ->select(['id', 'name'])
            ->get()
            ->mapWithKeys(function ($model) {
                return [$model->id => $model->name];
            });

        return $this->httpResponse()->setData($models);
    }

    public function getYears(Request $request)
    {
        $modelId = $request->input('model_id');
        
        if (!$modelId) {
            return $this->httpResponse()->setData([]);
        }

        $years = VehicleYear::query()
            ->where('model_id', $modelId)
            ->published()
            ->ordered()
            ->select(['id', 'year'])
            ->get()
            ->mapWithKeys(function ($year) {
                return [$year->id => $year->year];
            });

        return $this->httpResponse()->setData($years);
    }

    public function getVariants(Request $request)
    {
        $yearId = $request->input('year_id');
        
        if (!$yearId) {
            return $this->httpResponse()->setData([]);
        }

        $variants = VehicleVariant::query()
            ->where('year_id', $yearId)
            ->published()
            ->ordered()
            ->select(['id', 'name'])
            ->get()
            ->mapWithKeys(function ($variant) {
                return [$variant->id => $variant->name];
            });

        return $this->httpResponse()->setData($variants);
    }

    public function getMakes(Request $request)
    {
        $makes = VehicleMake::query()
            ->published()
            ->ordered()
            ->select(['id', 'name'])
            ->get()
            ->mapWithKeys(function ($make) {
                return [$make->id => $make->name];
            });

        return $this->httpResponse()->setData($makes);
    }
}