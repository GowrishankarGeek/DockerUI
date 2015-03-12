'use strict'
angular.module('googleApp')
  .controller 'MainCtrl', ['$scope', '$routeParams', 'ngTableParams', '$location','Sample', '$rootScope', '$sce', '$compile',
  ($scope, $routeParams, ngTableParams, $location, Sample, $rootScope, $sce, $compile)->
    $scope.dockerContent = {};
    $scope.dockerContent.url = "/views/_image_list.html";
    data = [{"repo":"bluemeric/tomcat","tag":"latest","image_id":"02a315457498","created":"2 days ago","size":"876.1 MB"},
            {"repo":"bluemeric/tomcat","tag":"bm.1425","image_id":"084e43b4ea1f","created":"4 days ago","size":"872.1 MB"},
            {"repo":"bluemeric/mysql","tag":"latest","image_id":"f692ae108163","created":"7 days ago","size":"880.9 MB"},
            {"repo":"bluemeric/mysql","tag":"103.1563","image_id":"49a0cd814acf","created":"8 days ago","size":"860.2 MB"},
            {"repo":"bluemeric/postgres","tag":"latest","image_id":"162b60ad8db9","created":"8 days ago","size":"960.4 MB"}, 
            {"repo":"bluemeric/testtom123","tag":"latest","image_id":"b283c231f215","created":"9 days ago","size":"883.3 MB"},
            {"repo":"bluemeric/ubuntu","tag":"latest","image_id":"130b3033c31a","created":"2 weeks ago","size":"864.7 MB"},
            {"repo":"bluemeric/ubuntu","tag":"109.2756","image_id":"8f7d4a87f66f","created":"2 weeks ago","size":"860.9 MB"},
            {"repo":"bluemeric/testtom123","tag":"latest","image_id":"b283c231f215","created":"9 days ago","size":"883.3 MB"},
            {"repo":"bluemeric/ubuntu","tag":"latest","image_id":"130b3033c31a","created":"2 weeks ago","size":"864.7 MB"},
            {"repo":"bluemeric/ubuntu","tag":"109.2756","image_id":"8f7d4a87f66f","created":"2 weeks ago","size":"860.9 MB"}];
    
    datal = [{"id":"3176a2479c92","image":"bluemeric/nginx:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"1 hours ago","ports":[{"privateport":22,"publicport":2424,"type":"tcp"},{"publicport":5050,"privateport":8080,"type":"tcp"}],"name":"ngnix"},
             {"id":"f46477f313b5","image":"bluemeric/tomcat:bm.142","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2222,"type":"tcp"},{"privateport":8080,"publicport":7070,"type":"tcp"}],"name":"tomcat_test"},
             {"id":"4cb07b47f9fb","image":"bluemeric/mysql:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"2 hours ago","ports":[{"privateport":22,"publicport":2626,"type":"tcp"}],"name":"mysqld"},
             {"id":"84ed738edf74","image":"bluemeric/ubuntu:latest","command":"/usr/bin/supervisor","status":"Exit 0","created":"3 hours ago","ports":[{"privateport":22,"publicport":2525,"type":"tcp"}],"name":"tomcat"},
             {"id":"59d94965a743","image":"bluemeric/ubuntu:109.2756","command":"/usr/bin/supervisor","status":"Exit 0","created":"4 hours ago","ports":[],"name":"ubuntu_test"}]
    
    $scope.tableParams = new ngTableParams({
      page: 1
      count: 10
    },
    total: data.length
    getData: ($defer, params) ->
      Sample.getImages().then (data) ->
        $scope.dockerImages = data;
        params.total(data.length);
        $defer.resolve(data);
      # $defer.resolve data.slice((params.page() - 1) * params.count(), params.page() * params.count())
      # return
    )

    $scope.containerList = () ->
      $scope.dockerContent.url = "/views/_container_list.html";
    $scope.imageList = () ->
      $scope.dockerContent.url = "/views/_image_list.html";
    $scope.getRepo = (image) ->
      return image.split(':')[0]

    $scope.getTag = (image) ->
      return image.split(':')[1]

]