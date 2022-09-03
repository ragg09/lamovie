<!-- resources/views/role/index.blade.php -->
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
		<th>role</th>

		@if(Auth::user()->role == "admin")
			<th>Edit</th>
			<th>Delete</th>
		@endif
	</tr>
</thead>
<tbody>
	@foreach($roles as $role)
		<tr>
			<td>{{$role->id}}</td>
			<td><a href="{{route('role.show',$role->id)}}">{{$role->role}}</a></td>

			@if(Auth::user()->name == "admin")
				<td align="center"><button><a href="{{ route('role.edit',$role->id) }}">Edit</a></button></td>
				{{-- <td align="center">{!! Form::open(array('route' => array('role.destroy', $role->id),'method'=>'DELETE')) !!}
				<button >Delete</button>
				</td> --}}
				<td align="center">{!! Form::open(array('route' => array('role.destroy', $role->id),'method'=>'DELETE')) !!}
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