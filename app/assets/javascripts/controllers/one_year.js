(function(){
  'use strict';

  angular.module('app')
    .controller('OneYearController', OneYearController);

    OneYearController.$inject = ['$http', '$stateParams'];

    function OneYearController($http, $stateParams){
      var vm = this;


      $http.get('/api/years/' + $stateParams.year)
        .then(function(res){
          vm.year = res.data;
        });


    }





})();
