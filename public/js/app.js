angular.module("productListing",[
	'ui.router',
	'ngResource',
	'productListing.controllers',
	'productListing.services'
]);

angular.module('productListing').config(function($stateProvider,$httpProvider){
	$stateProvider.state("products",{
		url: "movies",
		templateUrl: "/partials/products.html",
		controller: "ProductListsController"
	});
}).run(function($state){
	$state.go("products");
});
