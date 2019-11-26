const mix = require('laravel-mix');
mix.setResourceRoot('../');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */
path_node_modules = 'node_modules/';
mix.sass('resources/sass/duhocireland/frontend/common/common.scss', '../themes/duhocireland/assets/css/common.css').options({processCssUrls: false})
    .sass('resources/sass/duhocireland/frontend/frontend.scss', '../themes/duhocireland/assets/css/frontend.css').options({processCssUrls: false})
    .sass('resources/sass/duhocireland/frontend/reset.scss', '../themes/duhocireland/assets/css/reset.css').options({processCssUrls: false})
    .styles([
        path_node_modules + 'wowjs/dist/wow.js',
        path_node_modules + 'fancybox/dist/js/jquery.fancybox.js',

    ], 'themes/duhocireland/assets/js/core.common.js')
    .styles([
        path_node_modules + 'animate.css/animate.min.css',
        path_node_modules + 'fancybox/dist/css/jquery.fancybox.css',

    ], 'themes/duhocireland/assets/css/core.common.css')
