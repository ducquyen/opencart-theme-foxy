<?php 


class MenuServiceProvider extends ServiceProvider {


	public function __construct($app)
	{
		parent::__construct($app);

		$this->MODULE_CODE = 'Menu';
	}


	/**
	 * Register the service provider.
	 *
	 * @return void
	 */
	public function register()
	{
		parent::register();

		// If module licence is ok, we will register it
		if ($this->MODULE_STATUS)
		{
			$this->registerMenuBuilder();
		}
	}


	/**
	 * Register the HTML builder instance.
	 *
	 * @return void
	 */
	protected function registerMenuBuilder()
	{
		$this->app->instance('Menu', new MenuBuilder($this->app));
	}


	/**
	 * Get the services provided by this provider.
	 *
	 * @return array
	 */
	public function provides()
	{
		return array('Menu');
	}


}