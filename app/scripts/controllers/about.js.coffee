'use strict'
angular.module('googleApp')
  .controller 'AboutCtrl', ['$scope', '$routeParams', 'ngTableParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, ngTableParams, $location, Sample, $rootScope, $sce, $compile)->

    $scope.tableParams = new ngTableParams({
      page: 1
      count: 10
    },
    getData: ($defer, params) ->
      Sample.getContainers().then (data) ->
        $scope.containers = data;
        params.total(data.length);
        $defer.resolve(data.result);
    ) 
    $scope.toggleDetail = ($index)  ->
      $scope.activePosition = $scope.activePosition == $index ? -1 : $index;

    $scope.containerStatus = (status) ->
      if(status.match("Exited"))
        return false
      else
        return true

    
]
