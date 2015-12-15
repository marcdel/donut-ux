app.factory('messenger', ['$http', function($http) {
  return {
    send: function(message) {
      event.preventDefault();

      return $http.post('/messages', message).then(function() {
        return true;
      }, function(data, status, headers, config) {
        return false;
      });
    }
  };
}]);
