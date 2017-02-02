/**
 * Created by ikram on 02/02/2017.
 */
angular.module('app')
    .service('testService', function ($q, $http, $timeout, config) {
        this.getAll = function (path) {
            var deferred = $q.defer();
            $http.get(path)
                .success(function (data) {
                    deferred.resolve(data);
                })
                .error(function (reason, status) {
                    deferred.reject({reason: reason, status: status});
                });
            $timeout(function () {
                deferred.reject({reason: config.TIME_OUT, status: 'timeOut'});
            }, config.TIME_OUT);
            return deferred.promise;
        }
    });