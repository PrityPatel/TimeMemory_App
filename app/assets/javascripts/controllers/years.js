(function(){
  'use strict';

  angular.module('app')
    .controller('YearsController', YearsController);

    YearsController.$inject = ['$http', 'yearsService'];

    function YearsController($http, yearsService){
      var vm = this;
      vm.years_list = yearsService.allYears;

      $http.get('/api/years')
        .then(function(res){
          vm.years = res.data;
        });


    }





})();
