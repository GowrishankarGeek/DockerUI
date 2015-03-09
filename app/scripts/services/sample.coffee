angular.module('googleApp').factory 'Sample', ['appConfig','$resource','$http','$q', (appConfig, $resource, $http, $q) ->
  
    showVersion: (welcome) ->
        debugger
        deferred = $q.defer()
        xhr = $http.get(appConfig.baseUrl+'/accounts/109/virtual_machines')
        xhr.success (data) ->
          deferred.resolve data
          return
        xhr.error (data) ->
          deferred.reject data
          return
        deferred.promise
 ]