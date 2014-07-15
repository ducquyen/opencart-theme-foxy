<?php echo $header; ?>

<!-- Styles -->
<link rel="stylesheet" type="text/css" href="/admin/view/stylesheet/teil/modules-list.css">
<link rel="stylesheet" href="/admin/view/javascript/teil/bower_components/sass-bootstrap-glyphicons/css/bootstrap-glyphicons.css">

<!-- Mignify popup -->
<link rel="stylesheet" href="/admin/view/javascript/teil/bower_components/magnific-popup/dist/magnific-popup.css">

<!-- Token -->
<input type="hidden" value="<?php echo $token ?>" id="token">
<input type="hidden" value="<?php echo $this->config->get('config_email') ?>" id="admin-email">
<input type="hidden" value="<?php echo DIR_TEIL_MODULES ?>" id="dir-teil-modules">

<!-- Entry application -->
<div ng-app="teil" id="content">
	<div id="self-updater" ng-controller="SelfController">
		<div class="__has-progress bs-callout bs-callout-warning" ng-show="showUpdate" data-progress="{{ progress }}">
			<h4>There is new version avalible</h4>

			<button class="btn__blue ng-pristine ng-valid" ng-click="update()" ng-disabled="disableButton">Update now!</button>

			<div class="over"></div>
		</div>
	</div><!-- end #self-updater -->

	<div ng-controller="CommonController" ng-class="{'loading': loading}" class="has-loading" id="module-list-container">
		<div id="loading" ng-class="{'show-loading popin': loading}" class="clock-loading">
			<img src="/admin/view/image/teil/loading_clock.png" class="loading-icon">
		</div>

		<div class="boxed-block" ng-class="{'show-me': !totalInstalledModules}" class="ng-hide">
			<span class="glyphicon glyphicon-bullhorn"></span>
			<h5 class="__h2">You havn't install any modules, yet</h5>
			<div class="info__small">Try it out and install some - it's free!.</div>
		</div><!-- end .boxed-block -->

		<!-- List of already installed modules -->
		<div class="installed-modules" ng-show="totalInstalledModules">
			<h3 class="__h2">Your modules</h3>
			<div class="info__small">A huge range of learning resources across 10 creative topics, all in one convenient place.</div>

			<ul class="modules__list">
				<module-thumb ng-repeat="module in modules" ng-class="{'show-module popin': module.installed}"></module-thumb>
			</ul><!-- end ,.modules__list -->
		</div><!-- end .installed-modules -->

		<!-- List of all avalible modules -->
		<h3 class="__h2">Discover our great modules</h3>
		<div class="info__small">A huge range of best emarket modules across 10 creative topics, all in one convenient place.</div>

		<ul class="modules__list">
			<module-thumb ng-repeat="module in modules" class="show-module"></module-thumb>
		</ul><!-- end ,.modules__list -->

	</div><!-- end #content -->
</div><!-- end NG-APP -->


<!-- Mignific popup -->
<script src="/admin/view/javascript/teil/bower_components/magnific-popup/dist/jquery.magnific-popup.min.js"></script>

<!-- Angular core -->
<script src="/admin/view/javascript/teil/bower_components/angular/angular.js"></script>
<script src="/admin/view/javascript/teil/bower_components/angular-route/angular-route.min.js"></script>

<!-- Init -->
<script src="/admin/view/javascript/teil/init.js"></script>

<!-- Controllers -->
<script src="/admin/view/javascript/teil/controllers/CommonController.js"></script>
<script src="/admin/view/javascript/teil/controllers/SelfController.js"></script>

<!-- Directives -->
<script src="/admin/view/javascript/teil/directives/module-min-price.js"></script>
<script src="/admin/view/javascript/teil/directives/module-popup.js"></script>
<script src="/admin/view/javascript/teil/directives/module-thumb.js"></script>
<script src="/admin/view/javascript/teil/directives/btn-progress.js"></script>
<script src="/admin/view/javascript/teil/directives/capitalize.js"></script>

<!-- Services -->
<script src="/admin/view/javascript/teil/services/module-downloader.js"></script>
<script src="/admin/view/javascript/teil/services/module.js"></script>


<?php echo $footer; ?>