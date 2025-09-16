<?php

return [
    'name' => 'Vehicle Models',
    'create' => 'New vehicle model',
    'edit' => 'Edit vehicle model',
    'make' => 'Make',
    'tables' => [
        'name' => 'Name',
        'slug' => 'Slug',
        'make' => 'Make',
        'order' => 'Order',
        'status' => 'Status',
        'created_at' => 'Created at',
    ],
    'forms' => [
        'name' => 'Name',
        'slug' => 'Slug',
        'make' => 'Vehicle Make',
        'description' => 'Description',
        'order' => 'Order',
        'status' => 'Status',
        'name_placeholder' => 'Vehicle model name (Ex: Camry, Civic, X5)',
        'slug_placeholder' => 'Vehicle model slug (auto-generated)',
        'description_placeholder' => 'Short description about this vehicle model',
        'order_placeholder' => 'Order by number',
    ],
    'notices' => [
        'created' => 'Vehicle model created successfully',
        'updated' => 'Vehicle model updated successfully',
        'deleted' => 'Vehicle model deleted successfully',
    ],
];