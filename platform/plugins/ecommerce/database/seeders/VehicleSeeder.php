<?php

namespace Botble\Ecommerce\Database\Seeders;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Models\VehicleMake;
use Botble\Ecommerce\Models\VehicleModel;
use Botble\Ecommerce\Models\VehicleVariant;
use Botble\Ecommerce\Models\VehicleYear;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class VehicleSeeder extends Seeder
{
    public function run(): void
    {
        $vehicleData = [
            'Toyota' => [
                'models' => [
                    'Camry' => [2020, 2021, 2022, 2023, 2024],
                    'Corolla' => [2019, 2020, 2021, 2022, 2023],
                    'Prius' => [2020, 2021, 2022, 2023],
                    'RAV4' => [2019, 2020, 2021, 2022, 2023, 2024],
                ],
                'logo' => null,
            ],
            'Honda' => [
                'models' => [
                    'Civic' => [2019, 2020, 2021, 2022, 2023, 2024],
                    'Accord' => [2020, 2021, 2022, 2023, 2024],
                    'CR-V' => [2019, 2020, 2021, 2022, 2023],
                    'Pilot' => [2020, 2021, 2022, 2023],
                ],
                'logo' => null,
            ],
            'BMW' => [
                'models' => [
                    '3 Series' => [2019, 2020, 2021, 2022, 2023, 2024],
                    '5 Series' => [2020, 2021, 2022, 2023],
                    'X3' => [2019, 2020, 2021, 2022, 2023],
                    'X5' => [2020, 2021, 2022, 2023, 2024],
                ],
                'logo' => null,
            ],
            'Mercedes-Benz' => [
                'models' => [
                    'C-Class' => [2019, 2020, 2021, 2022, 2023, 2024],
                    'E-Class' => [2020, 2021, 2022, 2023],
                    'GLC' => [2019, 2020, 2021, 2022, 2023],
                    'GLE' => [2020, 2021, 2022, 2023, 2024],
                ],
                'logo' => null,
            ],
        ];

        $variants = [
            'Base' => [
                'engine_type' => '2.0L 4-Cylinder',
                'fuel_type' => 'Gasoline',
                'transmission' => 'Manual',
                'body_type' => 'Sedan',
            ],
            'Premium' => [
                'engine_type' => '2.5L 4-Cylinder',
                'fuel_type' => 'Gasoline',
                'transmission' => 'Automatic',
                'body_type' => 'Sedan',
            ],
            'Sport' => [
                'engine_type' => '3.0L V6',
                'fuel_type' => 'Gasoline',
                'transmission' => 'Automatic',
                'body_type' => 'Sedan',
            ],
            'Hybrid' => [
                'engine_type' => '2.0L Hybrid',
                'fuel_type' => 'Hybrid',
                'transmission' => 'CVT',
                'body_type' => 'Sedan',
            ],
            'SUV Base' => [
                'engine_type' => '2.4L 4-Cylinder',
                'fuel_type' => 'Gasoline',
                'transmission' => 'Automatic',
                'body_type' => 'SUV',
            ],
            'SUV Premium' => [
                'engine_type' => '3.5L V6',
                'fuel_type' => 'Gasoline',
                'transmission' => 'Automatic',
                'body_type' => 'SUV',
            ],
        ];

        foreach ($vehicleData as $makeName => $makeData) {
            $make = VehicleMake::create([
                'name' => $makeName,
                'slug' => Str::slug($makeName),
                'description' => "Description for {$makeName} vehicles",
                'logo' => $makeData['logo'],
                'status' => BaseStatusEnum::PUBLISHED,
                'order' => 0,
                'is_featured' => in_array($makeName, ['Toyota', 'Honda']),
            ]);

            foreach ($makeData['models'] as $modelName => $years) {
                $model = VehicleModel::create([
                    'name' => $modelName,
                    'slug' => Str::slug($makeName . '-' . $modelName),
                    'make_id' => $make->id,
                    'description' => "Description for {$makeName} {$modelName}",
                    'status' => BaseStatusEnum::PUBLISHED,
                    'order' => 0,
                ]);

                foreach ($years as $year) {
                    $vehicleYear = VehicleYear::create([
                        'year' => $year,
                        'model_id' => $model->id,
                        'description' => "Description for {$year} {$makeName} {$modelName}",
                        'status' => BaseStatusEnum::PUBLISHED,
                        'order' => 0,
                    ]);

                    // Determine which variants to add based on the model type
                    $availableVariants = [];
                    if (in_array($modelName, ['Prius'])) {
                        $availableVariants = ['Base', 'Premium', 'Hybrid'];
                    } elseif (in_array($modelName, ['RAV4', 'CR-V', 'X3', 'X5', 'GLC', 'GLE', 'Pilot'])) {
                        $availableVariants = ['SUV Base', 'SUV Premium'];
                    } else {
                        $availableVariants = ['Base', 'Premium', 'Sport'];
                    }

                    foreach ($availableVariants as $variantName) {
                        $variantData = $variants[$variantName];
                        VehicleVariant::create([
                            'name' => $variantName,
                            'slug' => Str::slug($makeName . '-' . $modelName . '-' . $year . '-' . $variantName),
                            'year_id' => $vehicleYear->id,
                            'description' => "Description for {$year} {$makeName} {$modelName} {$variantName}",
                            'engine_type' => $variantData['engine_type'],
                            'fuel_type' => $variantData['fuel_type'],
                            'transmission' => $variantData['transmission'],
                            'body_type' => $variantData['body_type'],
                            'status' => BaseStatusEnum::PUBLISHED,
                            'order' => 0,
                        ]);
                    }
                }
            }
        }
    }
}