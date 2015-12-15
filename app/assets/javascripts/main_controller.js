app.controller('MainController', ['$scope', 'messenger', function($scope, messenger){
  $scope.sendMessage = function(message) {
    messenger.send(message).then(function(sent) {
      if(sent) {
        $scope.messageSent = true;
        $scope.contactForm.$setPristine();
        $scope.message = {};
      }
    });
  };

  $scope.title = "Donut UX: A Full Circle UX Agency";
  $scope.lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet eleifend eros. Sed fermentum et eros non cursus. Proin tempor lobortis nisl, vel consequat turpis sagittis at. Ut blandit molestie lobortis. Curabitur magna arcu, condimentum finibus velit non, commodo semper elit. Donec ut consectetur velit. Proin sagittis odio maximus, interdum orci sed, imperdiet urna.";
  $scope.messageSuccessText = "Message sent! We'll get back to you soon!";
  $scope.messageSent = false;
}]);
