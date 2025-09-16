# Vehicle Search Cascading Dropdown Feature

This feature implements a comprehensive vehicle search system with cascading dropdowns for Make → Model → Year → Variant selection, similar to the Boodmo interface.

## Features

### Admin Panel Management
- **Vehicle Makes**: Manage car brands (Toyota, Honda, BMW, etc.)
- **Vehicle Models**: Manage car models associated with makes
- **Vehicle Years**: Manage production years for each model
- **Vehicle Variants**: Manage specific trims/modifications with detailed specifications
- **Product Association**: Associate products with specific vehicle variants

### Frontend Search Component
- Cascading dropdown interface with progressive enabling
- AJAX-powered dynamic loading of options
- Search functionality to find products by vehicle specification
- Mobile-responsive design

## Database Structure

The feature uses the following tables:
- `ec_vehicle_makes` - Vehicle brands (Toyota, Honda, etc.)
- `ec_vehicle_models` - Models associated with makes (Camry, Civic, etc.)
- `ec_vehicle_years` - Production years for each model
- `ec_vehicle_variants` - Specific variants with engine, fuel, transmission details
- `ec_product_vehicle_variants` - Junction table linking products to variants

## Installation & Setup

1. **Run Migrations**
   ```bash
   php artisan migrate
   ```

2. **Seed Sample Data** (Optional)
   ```bash
   php artisan db:seed --class="Botble\Ecommerce\Database\Seeders\VehicleSeeder"
   ```

## Usage

### Admin Panel

1. **Managing Vehicle Data**
   - Navigate to "Ecommerce" → "Vehicle Makes" to manage car brands
   - Use "Vehicle Models" to add models for each make
   - Add years in "Vehicle Years" for each model
   - Create detailed variants in "Vehicle Variants"

2. **Associating Products with Vehicles**
   - Edit any product in the admin panel
   - Find the "Vehicle Variants" section in the product form
   - Select all relevant vehicle variants that this product fits

### Frontend Implementation

1. **Adding the Search Component**
   Include the vehicle search component in your theme:
   ```php
   @include('plugins/ecommerce::components.fronts.vehicle-search')
   ```

2. **Using the Search Widget**
   - Users select Make → Model → Year → Variant in sequence
   - Each dropdown is enabled only after the previous selection
   - Click "Search" to find products for the selected vehicle
   - Results are displayed below the search form

## API Endpoints

The feature provides the following AJAX endpoints:

- `GET /ajax/vehicle-makes` - Get all vehicle makes
- `GET /ajax/vehicle-models?make_id={id}` - Get models for a make
- `GET /ajax/vehicle-years?model_id={id}` - Get years for a model
- `GET /ajax/vehicle-variants?year_id={id}` - Get variants for a year
- `GET /ajax/search-products-by-vehicle?variant_id={id}` - Search products by variant

## Customization

### Styling
The component uses Bootstrap 5 classes. Customize the appearance by overriding these classes:
- `.vehicle-search-widget` - Main container
- `.form-select` - Dropdown styling
- `.btn-primary` - Search button styling

### Language Customization
Language files are available in:
- `platform/plugins/ecommerce/resources/lang/en/vehicle-makes.php`
- `platform/plugins/ecommerce/resources/lang/en/vehicle-models.php`
- `platform/plugins/ecommerce/resources/lang/en/vehicle-years.php`
- `platform/plugins/ecommerce/resources/lang/en/vehicle-variants.php`

### Adding Custom Fields
To add custom fields to vehicle variants:
1. Create a migration to add columns to `ec_vehicle_variants`
2. Update the `VehicleVariant` model's `$fillable` array
3. Update the `VehicleVariantForm` and `VehicleVariantRequest`
4. Update the admin table view if needed

## Sample Data

The included seeder creates:
- 4 major car brands (Toyota, Honda, BMW, Mercedes-Benz)
- Multiple models for each brand
- Years from 2019-2024 for most models
- Realistic variants with engine, fuel, and transmission specs

## Troubleshooting

### Common Issues

1. **Dropdowns not loading**
   - Check that routes are properly registered
   - Verify AJAX endpoints are accessible
   - Check browser console for JavaScript errors

2. **Product associations not saving**
   - Ensure the `vehicleVariants()` relationship is properly defined in the Product model
   - Check that the sync operation is included in `StoreProductService`

3. **Admin menu not showing**
   - Verify menu items are registered in `EcommerceServiceProvider`
   - Check user permissions for vehicle management

### Permissions

Ensure users have the following permissions:
- `vehicle-makes.index`, `vehicle-makes.create`, `vehicle-makes.edit`, `vehicle-makes.destroy`
- `vehicle-models.index`, `vehicle-models.create`, `vehicle-models.edit`, `vehicle-models.destroy`
- `vehicle-years.index`, `vehicle-years.create`, `vehicle-years.edit`, `vehicle-years.destroy`
- `vehicle-variants.index`, `vehicle-variants.create`, `vehicle-variants.edit`, `vehicle-variants.destroy`

## Performance Considerations

- Vehicle data is typically cached for better performance
- Use database indexes on foreign key columns for faster queries
- Consider pagination for large datasets in admin tables
- AJAX requests are optimized to return only necessary data

## Future Enhancements

Potential improvements:
- Vehicle image gallery support
- Advanced filtering (price range, features)
- Vehicle comparison feature
- Import/export functionality for bulk vehicle data
- Integration with external vehicle databases