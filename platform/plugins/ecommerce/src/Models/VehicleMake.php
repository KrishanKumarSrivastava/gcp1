<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\HasMany;

class VehicleMake extends BaseModel
{
    protected $table = 'ec_vehicle_makes';

    protected $fillable = [
        'name',
        'slug',
        'description',
        'logo',
        'status',
        'order',
        'is_featured',
    ];

    protected $casts = [
        'name' => SafeContent::class,
        'description' => SafeContent::class,
        'status' => BaseStatusEnum::class,
        'is_featured' => 'bool',
        'order' => 'int',
    ];

    public function models(): HasMany
    {
        return $this
            ->hasMany(VehicleModel::class, 'make_id')
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('order')
            ->orderBy('name');
    }

    public function allModels(): HasMany
    {
        return $this
            ->hasMany(VehicleModel::class, 'make_id')
            ->orderBy('order')
            ->orderBy('name');
    }

    public function scopePublished($query)
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order')->orderBy('name');
    }
}