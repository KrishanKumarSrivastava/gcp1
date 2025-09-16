<?php

namespace Botble\Ecommerce\Tables;

use Botble\Base\Facades\BaseHelper;
use Botble\Ecommerce\Models\VehicleMake;
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
use Botble\Table\Columns\ImageColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\YesNoColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;

class VehicleMakeTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(VehicleMake::class)
            ->addActions([
                EditAction::make()->route('vehicle-makes.edit'),
                DeleteAction::make()->route('vehicle-makes.destroy'),
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
                'logo',
                'order',
                'is_featured',
                'status',
                'created_at',
            ]);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            ImageColumn::make('logo')
                ->title(trans('plugins/ecommerce::vehicle-makes.logo'))
                ->width(60),
            Column::make('name')
                ->title(trans('core/base::tables.name'))
                ->alignStart(),
            Column::make('order')
                ->title(trans('core/base::tables.order'))
                ->width(100),
            YesNoColumn::make('is_featured')
                ->title(trans('core/base::tables.is_featured'))
                ->width(100),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('vehicle-makes.create'), 'vehicle-makes.create');
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('vehicle-makes.destroy'),
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