<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\NumberBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\Column;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;

class VehicleVariantTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(VehicleVariant::class)
            ->addActions([
                EditAction::make()->route('vehicle-variants.edit'),
                DeleteAction::make()->route('vehicle-variants.destroy'),
            ]);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->getModel()
            ->query()
            ->select([
                'id',
                'name',
                'slug',
                'year_id',
                'engine_type',
                'fuel_type',
                'transmission',
                'order',
                'status',
                'created_at',
            ])
            ->with(['year.model.make:id,name', 'year.model:id,name,make_id', 'year:id,year,model_id']);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            Column::make('name')
                ->title(trans('core/base::tables.name'))
                ->alignStart(),
            Column::make('year.model.make.name')
                ->title(trans('plugins/ecommerce::vehicle-variants.make'))
                ->alignStart(),
            Column::make('year.model.name')
                ->title(trans('plugins/ecommerce::vehicle-variants.model'))
                ->alignStart(),
            Column::make('year.year')
                ->title(trans('plugins/ecommerce::vehicle-variants.year'))
                ->width(80),
            Column::make('engine_type')
                ->title(trans('plugins/ecommerce::vehicle-variants.engine_type'))
                ->width(120),
            Column::make('fuel_type')
                ->title(trans('plugins/ecommerce::vehicle-variants.fuel_type'))
                ->width(100),
            Column::make('transmission')
                ->title(trans('plugins/ecommerce::vehicle-variants.transmission'))
                ->width(120),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('vehicle-variants.create'), 'vehicle-variants.create');
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('vehicle-variants.destroy'),
        ];
    }

    public function getBulkChanges(): array
    {
        return [
            NameBulkChange::make(),
            NumberBulkChange::make()
                ->name('order')
                ->title(trans('core/base::tables.order'))
                ->placeholder(trans('core/base::forms.order_by_placeholder')),
            StatusBulkChange::make(),
            CreatedAtBulkChange::make(),
        ];
    }
}