angular.module('app')
  .filter('break', function(){
    return function(inp){
      return inp.replace(/\.\s\s/g, '.<br><br>');
    };

  });
