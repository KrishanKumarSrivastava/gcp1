<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class VehicleVariant extends BaseModel
{
    protected $table = 'ec_vehicle_variants';

    protected $fillable = [
        'name',
        'slug',
        'year_id',
        'description',
        'engine_type',
        'fuel_type',
        'transmission',
        'body_type',
        'status',
        'order',
    ];

    protected $casts = [
        'name' => SafeContent::class,
        'description' => SafeContent::class,
        'engine_type' => SafeContent::class,
        'fuel_type' => SafeContent::class,
        'transmission' => SafeContent::class,
        'body_type' => SafeContent::class,
        'status' => BaseStatusEnum::class,
        'order' => 'int',
    ];

    public function year(): BelongsTo
    {
        return $this->belongsTo(VehicleYear::class, 'year_id');
    }

    public function products(): BelongsToMany
    {
        return $this->belongsToMany(
            Product::class,
            'ec_product_vehicle_variants',
            'variant_id',
            'product_id'
        );
    }

    public function getFullNameAttribute(): string
    {
        $year = $this->year;
        $model = $year?->model;
        $make = $model?->make;

        $parts = array_filter([
            $make?->name,
            $model?->name,
            $year?->year,
            $this->name,
        ]);

        return implode(' ', $parts);
    }

    public function scopePublished($query)
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order')->orderBy('name');
    }

    public function scopeForYear($query, $yearId)
    {
        return $query->where('year_id', $yearId);
    }
}