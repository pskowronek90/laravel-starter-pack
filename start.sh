#!/usr/bin/env bash

echo "Please provide project name and press [ENTER]:"
read project
cd ../$project

echo "------------------------------------------"
echo "Installing LaraveL IDE Helper"
echo "------------------------------------------"
composer require barryvdh/laravel-ide-helper
sleep 3

echo "------------------------------------------"
echo "Installing Laravel Debugbar"
echo "------------------------------------------"
composer require barryvdh/laravel-debugbar --dev
sleep 3

echo "------------------------------------------"
echo "Installing Krlove Model Generator"
echo "------------------------------------------"
composer require krlove/eloquent-model-generator --dev
sleep 3

echo "------------------------------------------"
echo "Generating IDE Helper file"
echo "------------------------------------------"
php artisan ide-helper:generate

echo "------------------------------------------"
echo "Overwriting config file"
echo "------------------------------------------"
cd ../laravel-starter-pack
cp config/app.php ../$project/config
sleep 3

echo "Done!"





