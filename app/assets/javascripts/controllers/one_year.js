(function(){
  'use strict';

  angular.module('app')
    .controller('OneYearController', OneYearController);

    OneYearController.$inject = ['$http', 'yearsService', '$stateParams'];

    function OneYearController($http, yearsService, $stateParams){
      var vm = this;
      vm.years_list = yearsService.allYears;


      $http.get('/api/years/' + $stateParams.year)
        .then(function(res){
          vm.year = res.data;
        });


    }





})();
