<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class VehicleModel extends BaseModel
{
    protected $table = 'ec_vehicle_models';

    protected $fillable = [
        'name',
        'slug',
        'make_id',
        'description',
        'status',
        'order',
    ];

    protected $casts = [
        'name' => SafeContent::class,
        'description' => SafeContent::class,
        'status' => BaseStatusEnum::class,
        'order' => 'int',
    ];

    public function make(): BelongsTo
    {
        return $this->belongsTo(VehicleMake::class, 'make_id');
    }

    public function years(): HasMany
    {
        return $this
            ->hasMany(VehicleYear::class, 'model_id')
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('year', 'desc');
    }

    public function allYears(): HasMany
    {
        return $this
            ->hasMany(VehicleYear::class, 'model_id')
            ->orderBy('year', 'desc');
    }

    public function scopePublished($query)
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order')->orderBy('name');
    }

    public function scopeForMake($query, $makeId)
    {
        return $query->where('make_id', $makeId);
    }
}