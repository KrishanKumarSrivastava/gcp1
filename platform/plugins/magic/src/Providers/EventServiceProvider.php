<?php
namespace Shaqi\BotbleActivator\Providers;

use Illuminate\Routing\Events\RouteMatched;
use Botble\PluginManagement\Events\ActivatedPluginEvent;
use Botble\Base\Http\Middleware\EnsureLicenseHasBeenActivated;
use Shaqi\BotbleActivator\Listeners\SkipLicenseReminderListener;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Config;


class EventServiceProvider extends ServiceProvider
{

    protected $listen = [

        ActivatedPluginEvent::class => [
            SkipLicenseReminderListener::class,
        ],
    ];

    public function boot(): void
    {
        $events = $this->app['events'];
        $events->listen(RouteMatched::class, function () {
            $this->app->extend('core.middleware', function ($middleware) {
                // Filter out the middleware you want to remove
                $filteredMiddleware = array_filter($middleware, function ($class) {
                    return $class !== EnsureLicenseHasBeenActivated::class;
                });
                return $filteredMiddleware;
            });
        });

        Config::set('core.base.general.enable_system_updater', false);
        // Config::set('packages.plugin-management.general.enable_plugin_manager', false);
        Config::set('packages.plugin-management.general.enable_marketplace_feature', false);

    }

}
