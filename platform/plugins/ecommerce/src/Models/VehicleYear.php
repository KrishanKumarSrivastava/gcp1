<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class VehicleYear extends BaseModel
{
    protected $table = 'ec_vehicle_years';

    protected $fillable = [
        'year',
        'model_id',
        'description',
        'status',
        'order',
    ];

    protected $casts = [
        'description' => SafeContent::class,
        'status' => BaseStatusEnum::class,
        'year' => 'int',
        'order' => 'int',
    ];

    public function model(): BelongsTo
    {
        return $this->belongsTo(VehicleModel::class, 'model_id');
    }

    public function variants(): HasMany
    {
        return $this
            ->hasMany(VehicleVariant::class, 'year_id')
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('order')
            ->orderBy('name');
    }

    public function allVariants(): HasMany
    {
        return $this
            ->hasMany(VehicleVariant::class, 'year_id')
            ->orderBy('order')
            ->orderBy('name');
    }

    public function scopePublished($query)
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('year', 'desc');
    }

    public function scopeForModel($query, $modelId)
    {
        return $query->where('model_id', $modelId);
    }
}