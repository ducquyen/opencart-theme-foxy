'use strict';


// angular.extend(scope.module, {
//     title: 'Redeclared',
//     test: 'hello'
// });

window.teil.controller(
	'CommonController',
	[
		'$scope', 
		'$http', 
		'$compile', 
		'$timeout', 
		'Module',
		function CommonController($scope, $http, $compile, $timeout, Module) {

			// Number of total installed modules
			$scope.totalInstalledModules = 1;
			$scope.loading = true;

			// Parse all the modules
			$scope.modulesLoaded = function(resp) {
				$scope.modules = resp;

				Module.my().success($scope.myModulesLoaded);
			};

			// Get list of already installed apps
			$scope.myModulesLoaded = function(resp) {
				var modules = resp;

				angular.forEach($scope.modules, function(el, index) {
					if (modules[el.code] != undefined) {
						$scope.modules[index].installed = true;
						$scope.modules[index].key = modules[el.code].key;

						$scope.totalInstalledModules++;
					};
				});

				// Start watching
				$scope.setUpWatchers();

				// Remove loading
				$scope.loading = false;
			};


			// Request for modules
			Module.all().success($scope.modulesLoaded);

			// Watch modules change
			$scope.setUpWatchers = function() {
				// Recalculate already installed modules
				$scope.$watch('modules', function(val) {
					var totalInstalled = 0;

					angular.forEach($scope.modules, function(el, index) {
						if (el.installed) {
							totalInstalled++;
						};
					});


					$scope.totalInstalledModules = totalInstalled;
					console.log($scope.totalInstalledModules);
				}, true);
			};


			// Open popup with detail info of module
			$scope.openPopup = function(module) {
				$scope.selectedModule = module;

				// Create popup
				var popup = angular.element('<module-popup module="module"></module-popup>');
				$compile(popup)($scope);

				// Append popup to the body
				angular.element('body').append(popup);
			};
		}
]);