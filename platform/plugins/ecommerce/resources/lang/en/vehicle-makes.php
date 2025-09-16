<?php

return [
    'name' => 'Vehicle Makes',
    'create' => 'New vehicle make',
    'edit' => 'Edit vehicle make',
    'logo' => 'Logo',
    'is_featured' => 'Is featured',
    'tables' => [
        'name' => 'Name',
        'slug' => 'Slug',
        'logo' => 'Logo',
        'order' => 'Order',
        'is_featured' => 'Featured',
        'status' => 'Status',
        'created_at' => 'Created at',
    ],
    'forms' => [
        'name' => 'Name',
        'slug' => 'Slug',
        'description' => 'Description',
        'logo' => 'Logo',
        'order' => 'Order',
        'is_featured' => 'Is featured',
        'status' => 'Status',
        'name_placeholder' => 'Vehicle make name (Ex: Toyota, Honda, BMW)',
        'slug_placeholder' => 'Vehicle make slug (auto-generated)',
        'description_placeholder' => 'Short description about this vehicle make',
        'order_placeholder' => 'Order by number',
    ],
    'notices' => [
        'created' => 'Vehicle make created successfully',
        'updated' => 'Vehicle make updated successfully',
        'deleted' => 'Vehicle make deleted successfully',
    ],
];