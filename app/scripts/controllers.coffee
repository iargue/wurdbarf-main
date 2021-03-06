'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller('AppCtrl', [
  '$scope'
  '$location'
  '$resource'
  '$rootScope'

($scope, $location, $resource, $rootScope) ->

  # Uses the url to determine if the selected
  # menu item should have the class active.
  $scope.$location = $location
  $scope.$watch('$location.path()', (path) ->
    $scope.activeNavId = path || '/'
  )

  # getClass compares the current url with the id.
  # If the current url starts with the id it returns 'active'
  # otherwise it will return '' an empty string. E.g.
  #
  #   # current url = '/products/1'
  #   getClass('/products') # returns 'active'
  #   getClass('/orders') # returns ''
  #
  $scope.getClass = (id) ->
    if $scope.activeNavId.substring(0, id.length) == id
      return 'active'
    else
      return ''
])

.controller('LoginCtrl', ['$scope', '$location', ($scope, $location) ->
  $scope.login = () ->
    $location.path '/home'

  $scope.getGreeting = () ->
    greetings = [
      'The worst social network ever!'
      'The first ever NSA data mining network.'
    ]

    greetings[Math.floor(Math.random()*greetings.length)]
])

.controller('HomeCtrl', ['$scope', '$location', ($scope, $location) ->

])





