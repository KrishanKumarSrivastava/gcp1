<?php

namespace Database\Seeders;

use Botble\Base\Facades\MetaBox;
use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Database\Seeders\Traits\HasProductSeeder;
use Illuminate\Support\Facades\File;

class ProductSeeder extends BaseSeeder
{
    use HasProductSeeder;

    public function run(): void
    {
        $this->uploadFiles('products');

        $faker = $this->fake();

        $productNames = [
            'Smart Home Speaker',
            'Headphone Ultra Bass',
            'Boxed - Bluetooth Headphone',
            'Camera Samsung SS-24',
            'Macbook Pro 2015',
            'Apple Watch Serial 7',
            'Macbook Pro 13 inch',
            'Apple Keyboard',
            'MacSafe 80W',
            'Hand playstation',
            'Apple Airpods Serial 3',
            'Cool Smart Watches',
            'Black Smart Watches',
            'Leather Watch In Black',
            'Macbook Pro 2015 13 inch',
            'Historic Alarm Clock',
            'Black Glasses',
            'Phillips Mouse',
            'Gaming Keyboard',
            'Wireless Keyboard',
            'Black Smart Watches',
            'Smart Home Speaker',
            'Headphone Ultra Bass',
            'Boxed - Bluetooth Headphone',
            'Camera Samsung SS-24',
            'Leather Watch In Black',
            'Apple iPhone 13 Plus',
            'Macbook Pro 2015',
            'Apple Watch Serial 7',
            'Macbook Pro 13 inch',
            'Apple Keyboard',
            'MacSafe 80W',
            'Hand playstation',
            'Apple Airpods Serial 3',
            'Cool Smart Watches',
            'Black Smart Watches',
            'Leather Watch In Black',
            'Macbook Pro 2015 13 inch',
            'Sony WH-1000XM4 Wireless Headphones',
            'Samsung Galaxy S22 Ultra',
            'Dell XPS 15 Laptop',
            'iPad Pro 12.9-inch',
            'Bose QuietComfort Earbuds',
            'LG OLED C1 Series TV',
            'Dyson V11 Vacuum Cleaner',
            'Nintendo Switch OLED Model',
            'Canon EOS R5 Camera',
            'Fitbit Sense Smartwatch',
            'Sonos Beam Soundbar',
            'Logitech MX Master 3 Mouse',
            'Kindle Paperwhite E-reader',
            'GoPro HERO10 Black',
            'Anker PowerCore Power Bank',
        ];

        $products = [];

        // Generate products based on the available images (up to 63)
        for ($i = 1; $i <= 63; $i++) {
            // Check if the product images exist
            if (! File::exists(database_path('seeders/files/products/' . $i . '-1.jpg'))) {
                continue;
            }

            // Get the product name from the array or generate a fallback name
            $name = $productNames[$i - 1] ?? 'Product ' . $i;

            // Generate random price between 50 and 2000
            $price = $faker->randomFloat(2, 50, 2000);

            // Determine if the product should have a sale price (30% chance)
            $hasSalePrice = $faker->boolean(30);
            $salePrice = $hasSalePrice ? $price - ($price * $faker->numberBetween(10, 30) / 100) : null;

            // Determine if the product is featured (20% chance)
            $isFeatured = $faker->boolean(20);

            // Create the product data
            $product = [
                'name' => $name,
                'price' => $price,
                'is_featured' => $isFeatured,
            ];

            // Add sale price if applicable
            if ($hasSalePrice) {
                $product['sale_price'] = $salePrice;
            }

            $products[] = $product;
        }

        foreach ($products as $key => &$item) {
            $item['description'] = '<ul><li> Unrestrained and portable active stereo speaker</li>
            <li> Free from the confines of wires and chords</li>
            <li> 20 hours of portable capabilities</li>
            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>
            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>';
            $item['content'] = '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>
                                <p>- Casual unisex fit</p>

                                <p>- 64% polyester, 36% polyurethane</p>

                                <p>- Water column pressure: 4000 mm</p>

                                <p>- Model is 187cm tall and wearing a size S / M</p>

                                <p>- Unisex fit</p>

                                <p>- Drawstring hood with built-in cap</p>

                                <p>- Front placket with snap buttons</p>

                                <p>- Ventilation under armpit</p>

                                <p>- Adjustable cuffs</p>

                                <p>- Double welted front pockets</p>

                                <p>- Adjustable elastic string at hempen</p>

                                <p>- Ultrasonically welded seams</p>

                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>';

            // Add images for each product
            $productNumber = $key + 1;
            $images = [];

            // Check for all possible images for this product (up to 4 images per product)
            for ($i = 1; $i <= 4; $i++) {
                $imagePath = 'products/' . $productNumber . '-' . $i . '.jpg';
                if (File::exists(database_path('seeders/files/' . $imagePath))) {
                    $images[] = $imagePath;
                }
            }

            $item['images'] = $images;

            // Add metadata for FAQ schema
            $item['metadata'] = [
                'faq_schema_config' => json_decode(
                    '[[{"key":"question","value":"What Shipping Methods Are Available?"},{"key":"answer","value":"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor."}],[{"key":"question","value":"Do You Ship Internationally?"},{"key":"answer","value":"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray."}],[{"key":"question","value":"How Long Will It Take To Get My Package?"},{"key":"answer","value":"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice."}],[{"key":"question","value":"What Payment Methods Are Accepted?"},{"key":"answer","value":"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY."}],[{"key":"question","value":"Is Buying On-Line Safe?"},{"key":"answer","value":"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest."}]]',
                    true
                ),
            ];
        }

        $this->createProducts($products);
    }

    protected function createMetadata($product, $item): void
    {
        if (isset($item['metadata']) && is_array($item['metadata'])) {
            foreach ($item['metadata'] as $key => $value) {
                MetaBox::saveMetaBoxData($product, $key, $value);
            }
        }
    }
}
