<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trabalho Andr� Carros</title>
</head>
<script src="js/angular.min.js"></script>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f1f1f1;
}

table tr:nth-child(even) {
	background-color: #ffffff; 
}
</style>
<body>
<div ng-app"myApp" ng-controller="customersCtrl">

	<table>
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>Modelo</strong></td>
			<td><strong>Nome</strong></td>
		</tr>
		<tr ng-repeat="x in names">
			<td>{{ x.id }}</td>
			<td>{{ x.modelo }}</td>
			<td>{{ x.nome }}</td>
		</tr>
	</table>
</div>
<script>
	var app = angular.module('myApp', []);
	app
		.controller(
				'customersCtrl',
				function($scope, $http) {
					$http
						.get(
								"http://localhost:8080/ProjCarro/REST/carro/select")
						.then(function(response) {
							$scope.names = response.data;
						})
				})
</script>
</body>
</html>