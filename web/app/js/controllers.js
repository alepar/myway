'use strict';

var mywayControllers = angular.module('mywayControllers', []);

mywayControllers.controller('UserDetailCtrl', ['$scope', '$routeParams', 'User', function($scope, $routeParams, User) {
    $scope.user = User.get({sampleId: 'hey'});
}]);
