<!-- resources/views/producer/index.blade.php -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
@extends('layouts.app')
</head>
<body>
@section('body')

<div class="container">
{{-- <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
<span><strong>ADD</strong></span> --}}
</a>
@if ($message = Session::get('success'))
<div class="alert alert-success alert-block">
{{-- <button type="button" class="close" data-dismiss="alert">×</button> --}}
<strong>{{ $message }}</strong>
</div>
@endif

<div class="table-responsive">
<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Id</th>
		<th>name</th>
		<th>email</th>
		<th>website</th>

		@if(Auth::user()->name == "admin")
			<th>Edit</th>
			<th>Delete</th>
		@endif
	</tr>
</thead>
<tbody>
	@foreach($producers as $producer)
		<tr>
			<td>{{$producer->id}}</td>
			<td><a href="{{route('producer.show',$producer->id)}}">{{$producer->name}}</a></td>
			<td>{{$producer->email}}</td>
			<td>{{$producer->website}}</td>

			@if(Auth::user()->name == "admin")
				<td align="center"><button><a href="{{ route('producer.edit',$producer->id) }}">Edit</a></button></td>
				{{-- <td align="center">{!! Form::open(array('route' => array('producer.destroy', $producer->id),'method'=>'DELETE')) !!}
				<button >Delete</button>
				</td> --}}
				<td align="center">{!! Form::open(array('route' => array('producer.destroy', $producer->id),'method'=>'DELETE')) !!}
				<button >Delete</i></button>
				{!! Form::close() !!}
			@endif
		</tr>
	@endforeach
</tbody>
</table>
</div>

</div>
@endsection

</body>
</html>