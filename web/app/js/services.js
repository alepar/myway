'use strict';

var mywayServices = angular.module('mywayServices', ['ngResource']);

mywayServices.factory('User', ['$resource',
    function($resource){
        return $resource('api/helloworld/:sampleId.json', {}, {
            query: {method:'GET', params:{sampleId:'123'}, isArray:true}
        });
    }]);

mywayServices.
    value('version', '0.1');
