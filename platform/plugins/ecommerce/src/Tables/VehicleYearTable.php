<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\VehicleYear;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NumberBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\Column;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;

class VehicleYearTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(VehicleYear::class)
            ->addActions([
                EditAction::make()->route('vehicle-years.edit'),
                DeleteAction::make()->route('vehicle-years.destroy'),
            ]);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $query = $this->getModel()
            ->query()
            ->select([
                'id',
                'year',
                'model_id',
                'order',
                'status',
                'created_at',
            ])
            ->with(['model.make:id,name', 'model:id,name,make_id']);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            Column::make('year')
                ->title(trans('plugins/ecommerce::vehicle-years.year'))
                ->width(100),
            Column::make('model.make.name')
                ->title(trans('plugins/ecommerce::vehicle-years.make'))
                ->alignStart(),
            Column::make('model.name')
                ->title(trans('plugins/ecommerce::vehicle-years.model'))
                ->alignStart(),
            Column::make('order')
                ->title(trans('core/base::tables.order'))
                ->width(100),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('vehicle-years.create'), 'vehicle-years.create');
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('vehicle-years.destroy'),
        ];
    }

    public function getBulkChanges(): array
    {
        return [
            NumberBulkChange::make()
                ->name('year')
                ->title(trans('plugins/ecommerce::vehicle-years.year')),
            NumberBulkChange::make()
                ->name('order')
                ->title(trans('core/base::tables.order'))
                ->placeholder(trans('core/base::forms.order_by_placeholder')),
            StatusBulkChange::make(),
            CreatedAtBulkChange::make(),
        ];
    }
}