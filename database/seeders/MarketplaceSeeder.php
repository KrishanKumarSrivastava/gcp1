<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Marketplace\Database\Seeders\Traits\HasMarketplaceSeeder;

class MarketplaceSeeder extends BaseSeeder
{
    use HasMarketplaceSeeder;

    public function run(): void
    {
        $this->uploadFiles('stores');

        $stores = [
            [
                'name' => 'GoPro',
                'logo' => 'stores/1.png',
                'content' => 'Founded in 2002, GoPro has grown into a global brand known for its action cameras and versatile accessories.',
            ],
            [
                'name' => 'Global Office',
                'logo' => 'stores/2.png',
                'content' => 'Global Office provides high-quality office supplies and equipment for businesses of all sizes.',
            ],
            [
                'name' => 'Young Shop',
                'logo' => 'stores/3.png',
                'content' => 'Young Shop specializes in trendy fashion and accessories for the youth market.',
            ],
            [
                'name' => 'Global Store',
                'logo' => 'stores/4.png',
                'content' => 'Global Store offers a wide range of products from electronics to home goods at competitive prices.',
            ],
            [
                'name' => 'Robert\'s Store',
                'logo' => 'stores/5.png',
                'content' => 'Robert\'s Store is your destination for premium quality clothing and accessories.',
            ],
            [
                'name' => 'Stouffer',
                'logo' => 'stores/6.png',
                'content' => 'Stouffer brings you delicious, ready-to-eat meals that are perfect for busy lifestyles.',
            ],
            [
                'name' => 'StarKist',
                'logo' => 'stores/7.png',
                'content' => 'StarKist is committed to providing sustainable seafood products of the highest quality.',
            ],
            [
                'name' => 'Old El Paso',
                'logo' => 'stores/8.png',
                'content' => 'Old El Paso brings the flavors of Mexico to your table with authentic ingredients and recipes.',
            ],
            [
                'name' => 'Tyson',
                'logo' => 'stores/9.png',
                'content' => 'Tyson offers a variety of protein products to help you create delicious meals for your family.',
            ],
        ];

        $this->createStores($stores);
    }
}
