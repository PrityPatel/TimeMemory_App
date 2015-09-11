(function(){
  'use strict';

  angular.module('app')
    .factory('yearsService', function(){
      var service = {};


      service.allYears = fillYears();

      function fillYears(){
        var arr = [];
        for (var i= 1900; i < 2015; i++) {
          arr.push(i);
        }
        return arr;
      }

      return service;
    });


})();
