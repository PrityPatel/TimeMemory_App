(function(){
  'use strict';

  angular.module('app')
    .controller('HomeController', HomeController);

    HomeController.$inject = ['$http', 'yearsService'];

    function HomeController($http, yearsService){
      var vm = this;
      vm.years_list = yearsService.allYears;

      }

})();
