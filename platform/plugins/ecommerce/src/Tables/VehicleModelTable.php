<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\VehicleModel;
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

class VehicleModelTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(VehicleModel::class)
            ->addActions([
                EditAction::make()->route('vehicle-models.edit'),
                DeleteAction::make()->route('vehicle-models.destroy'),
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
                'make_id',
                'order',
                'status',
                'created_at',
            ])
            ->with(['make:id,name']);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            Column::make('name')
                ->title(trans('core/base::tables.name'))
                ->alignStart(),
            Column::make('make.name')
                ->title(trans('plugins/ecommerce::vehicle-models.make'))
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
        return $this->addCreateButton(route('vehicle-models.create'), 'vehicle-models.create');
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('vehicle-models.destroy'),
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