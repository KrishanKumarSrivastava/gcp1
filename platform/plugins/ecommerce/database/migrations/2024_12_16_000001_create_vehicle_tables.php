<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('ec_vehicle_makes', function (Blueprint $table): void {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->mediumText('description')->nullable();
            $table->string('logo')->nullable();
            $table->string('status', 60)->default('published');
            $table->integer('order')->unsigned()->default(0);
            $table->tinyInteger('is_featured')->unsigned()->default(0);
            $table->timestamps();
            
            $table->index(['status', 'order']);
        });

        Schema::create('ec_vehicle_models', function (Blueprint $table): void {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->foreignId('make_id')->constrained('ec_vehicle_makes')->onDelete('cascade');
            $table->mediumText('description')->nullable();
            $table->string('status', 60)->default('published');
            $table->integer('order')->unsigned()->default(0);
            $table->timestamps();
            
            $table->index(['make_id', 'status', 'order']);
        });

        Schema::create('ec_vehicle_years', function (Blueprint $table): void {
            $table->id();
            $table->year('year');
            $table->foreignId('model_id')->constrained('ec_vehicle_models')->onDelete('cascade');
            $table->mediumText('description')->nullable();
            $table->string('status', 60)->default('published');
            $table->integer('order')->unsigned()->default(0);
            $table->timestamps();
            
            $table->index(['model_id', 'year', 'status']);
            $table->unique(['model_id', 'year']);
        });

        Schema::create('ec_vehicle_variants', function (Blueprint $table): void {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->foreignId('year_id')->constrained('ec_vehicle_years')->onDelete('cascade');
            $table->mediumText('description')->nullable();
            $table->string('engine_type')->nullable();
            $table->string('fuel_type')->nullable();
            $table->string('transmission')->nullable();
            $table->string('body_type')->nullable();
            $table->string('status', 60)->default('published');
            $table->integer('order')->unsigned()->default(0);
            $table->timestamps();
            
            $table->index(['year_id', 'status', 'order']);
        });

        Schema::create('ec_product_vehicle_variants', function (Blueprint $table): void {
            $table->foreignId('product_id')->constrained('ec_products')->onDelete('cascade');
            $table->foreignId('variant_id')->constrained('ec_vehicle_variants')->onDelete('cascade');
            $table->primary(['product_id', 'variant_id']);
            
            $table->index(['variant_id', 'product_id']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('ec_product_vehicle_variants');
        Schema::dropIfExists('ec_vehicle_variants');
        Schema::dropIfExists('ec_vehicle_years');
        Schema::dropIfExists('ec_vehicle_models');
        Schema::dropIfExists('ec_vehicle_makes');
    }
};