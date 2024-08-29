<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->mediumText('description')->nullable();
            $table->string('code', 50);
            $table->string('type', 50)->default('percentage');
            $table->double('discount')->default(1);
            $table->double('min_order')->default(1);
            $table->double('max_discount')->default(1);
            $table->integer('user_limit')->default(0);
            $table->integer('use_limit')->default(0);
            $table->integer('use_count')->default(0);
            $table->timestamp('date_start')->nullable();
            $table->timestamp('date_expire')->nullable();
            $table->tinyInteger('active')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coupons');
    }
};
