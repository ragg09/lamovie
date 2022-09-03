 <!-- resources/views/layouts/base.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	@section('head')
		<link rel="stylesheet" type="text/css" href="{{ URL::asset('css/navbar.css') }}">
	@show
</head>
<body>
	@include('sama.navbar')
	{{-- yield is like a div or section --}}
	@yield('body')
	@yield('sec1')
	@yield('sec2')
	@yield('div3')
</body>
</html>
