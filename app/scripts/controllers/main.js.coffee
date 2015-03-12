'use strict'
angular.module('googleApp')
  .controller 'MainCtrl', ['$scope', '$routeParams', 'ngTableParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, ngTableParams, $location, Sample, $rootScope, $sce, $compile)->
    $scope.dockerContent = {};
    $scope.dockerContent.url = "/views/_image_list.html";
    
    $scope.tableParams = new ngTableParams({
      page: 1
      count: 10
    },
    getData: ($defer, params) ->
      Sample.getImages().then (data) ->
        $scope.dockerImages = data;
        params.total(data.length);
        $defer.resolve(data);
      # $defer.resolve data.slice((params.page() - 1) * params.count(), params.page() * params.count())
      # return
    )
     
    Sample.showInfo().then (data) ->
      $scope.dockerInfo = data;

    $scope.containerList = () ->
      $scope.dockerContent.url = "/views/_container_list.html";
    $scope.imageList = () ->
      $scope.dockerContent.url = "/views/_image_list.html";
    $scope.getRepo = (image) ->
      return image.split(':')[0]

    $scope.getTag = (image) ->
      return image.split(':')[1]

]