(function(){
  'use strict';

  angular.module('app', ['ui.router'])
    .config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('home', {
          url: '/home',
          templateUrl: '/pages/home.html',
          controller: 'HomeController',
          controllerAs: 'vm'
        })

        .state('years', {
          url: '/years',
          templateUrl: '/pages/years.html',
          controller: 'YearsController',
          controllerAs: 'vm'
        })

        .state('year', {
          url: '/years/:year',
          templateUrl: '/pages/year.html',
          controller: 'OneYearController',
          controllerAs: 'vm'
        });

        $urlRouterProvider.otherwise('/home');
    }]);







})();
