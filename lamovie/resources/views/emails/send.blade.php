<!-- resources/views/actor/index.blade.php -->
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
		<th>Send Email</th>
	</tr>
</thead>
<tbody>
	@foreach($users as $user)
		<tr>
			<td>{{$user->id}}</td>
			<td>{{$user->name}}</td>
			<td>{{$user->email}}</td>
			<td><a href="{{url('/email',$user->email)}} "><button>Send</button></a></td>

			{{-- @if(Auth::user()->name == "admin")
				<td align="center"><button><a href="{{ route('actor.edit',$actor->id) }}">Edit</a></button></td>
				<td align="center">{!! Form::open(array('route' => array('actor.destroy', $actor->id),'method'=>'DELETE')) !!}
				<button >Delete</button>
				</td>
				<td align="center">{!! Form::open(array('route' => array('actor.destroy', $actor->id),'method'=>'DELETE')) !!}
				<button >Delete</i></button>
				{!! Form::close() !!}
			@endif --}}
		</tr>
	@endforeach
</tbody>
</table>
</div>

</div>
@endsection

</body>
</html>