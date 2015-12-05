describe('MainController', function() {
  beforeEach(module('donutUx'));

  var $controller;

  beforeEach(inject(function(_$controller_){
    $controller = _$controller_;
  }));

  describe('$scope.title', function(){
    it('sets the title', function(){
      var $scope = {};
      var controller = $controller('MainController', { $scope: $scope });

      expect($scope.title).toEqual('Donut UX: A Full Circle UX Agency');
    });
  });
});
