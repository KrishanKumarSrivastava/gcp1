<?php

namespace Botble\Ecommerce\Http\Controllers\Fronts;

use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Facades\ProductCategoryHelper;
use Botble\Ecommerce\Http\Controllers\BaseController;
use Botble\Ecommerce\Models\VehicleMake;
use Botble\Ecommerce\Models\VehicleModel;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Ecommerce\Models\VehicleYear;
use Botble\Ecommerce\Services\Products\GetProductService;
use Botble\Theme\Facades\Theme;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class PublicAjaxController extends BaseController
{
    public function ajaxSearchProducts(Request $request, GetProductService $productService)
    {
        $request->merge(['num' => 12]);

        $with = EcommerceHelper::withProductEagerLoadingRelations();

        $products = $productService->getProduct($request, null, null, $with);

        $queries = $request->input();

        foreach ($queries as $key => $query) {
            if (! $query || $key == 'num' || (is_array($query) && ! Arr::get($query, 0))) {
                unset($queries[$key]);
            }
        }

        $total = $products->count();

        return $this
            ->httpResponse()
            ->setData(view(EcommerceHelper::viewPath('includes.ajax-search-results'), compact('products', 'queries'))->render())
            ->setMessage($total != 1 ? __(':total Products found', compact('total')) : __(':total Product found', compact('total')));
    }

    public function ajaxGetCategoriesDropdown()
    {
        $categoriesDropdownView = Theme::getThemeNamespace('partials.product-categories-dropdown');

        return $this
            ->httpResponse()
            ->setData([
                'select' => ProductCategoryHelper::renderProductCategoriesSelect(),
                'dropdown' => view()->exists($categoriesDropdownView)
                    ? view($categoriesDropdownView)->render()
                    : null,
            ]);
    }

    public function ajaxGetVehicleMakes()
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

    public function ajaxGetVehicleModels(Request $request)
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

    public function ajaxGetVehicleYears(Request $request)
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

    public function ajaxGetVehicleVariants(Request $request)
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

    public function ajaxSearchProductsByVehicle(Request $request, GetProductService $productService)
    {
        $variantId = $request->input('variant_id');
        
        if (!$variantId) {
            return $this->httpResponse()->setData([]);
        }

        $request->merge(['num' => 12]);

        $with = EcommerceHelper::withProductEagerLoadingRelations();
        $with[] = 'vehicleVariants';

        $products = $productService->getProduct($request, null, null, $with)
            ->whereHas('vehicleVariants', function ($query) use ($variantId) {
                $query->where('ec_vehicle_variants.id', $variantId);
            });

        $queries = $request->input();

        foreach ($queries as $key => $query) {
            if (! $query || $key == 'num' || (is_array($query) && ! Arr::get($query, 0))) {
                unset($queries[$key]);
            }
        }

        $total = $products->count();

        return $this
            ->httpResponse()
            ->setData(view(EcommerceHelper::viewPath('includes.ajax-search-results'), compact('products', 'queries'))->render())
            ->setMessage($total != 1 ? __(':total Products found', compact('total')) : __(':total Product found', compact('total')));
    }
}
