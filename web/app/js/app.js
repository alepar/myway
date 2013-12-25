'use strict';

angular.module('mywayApp', [
  'ngRoute',
  'myApp.filters',
  'mywayServices',
  'myApp.directives',
  'mywayControllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/view1', {templateUrl: 'partials/partial1.html', controller: 'UserDetailCtrl'});
  $routeProvider.when('/view2', {templateUrl: 'partials/partial2.html', controller: 'UserDetailCtrl'});
  $routeProvider.otherwise({redirectTo: '/view1'});
}]);
