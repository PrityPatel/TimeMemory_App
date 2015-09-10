(function(){
  'use strict';

  angular.module('app')
    .controller('YearsController', YearsController);

    YearsController.$inject = ['$http'];

    function YearsController($http){
      var vm = this;

      $http.get('/api/years')
        .then(function(res){
          vm.years = res.data;
        });


    }





})();
