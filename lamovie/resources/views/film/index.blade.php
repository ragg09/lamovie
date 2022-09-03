<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
@extends('layouts.app')
</head>
<body>
@section('body')
<div class="table-responsive">
<table class="table table-striped table-hover">
<thead>
<tr>
{{-- <th>ID</th> --}}
<th>Title</th>
{{-- <th>Film Story</th>
<th>Released Date</th>
<th>Duration</th>
<th>Additional Information</th>
 --}}<th>Image</th>
		{{-- @if(Auth::user()->name == "admin")
			<th>Edit</th>
			<th>Delete</th>
			<th>Restore</th>
		@endif --}}
</tr>
</thead>
<tbody>
@foreach($films as $film)
<tr>
{{-- <td>{{$film->id}}</td> --}}
<td><a href="{{ route('film.show',$film->id) }}">{{$film->title}}</a></td>
{{-- <td>{{$film->story}}</td>
<td>{{$film->released_at}}</td>
<td>{{$film->duration}}</td>
<td>{{$film->info}}</td> --}}
<td><a href="{{ route('film.show',$film->id) }}"><img src="{{ asset('image/'.$film->image) }} " height="160" width="300"></a></td>

			@if(Auth::user()->name == "admin")
				@if($film->deleted_at==null)
					<td align="center"><button><a href="{{ route('film.edit',$film->id) }}">Edit</a></button></td>
					<td align="center">
						{!! Form::open(array('route' => array('film.destroy', $film->id),'method'=>'DELETE')) !!}
					<button >Delete</i></button>
					{!! Form::close() !!}
				@else
					<td></td>
					<td></td>
					<td align="center"><button><a href="{{ route('film.restore',$film->id) }}">Restore</a></button></td>
				@endif
			@endif

@endforeach

</tbody>
</table>
</div>
<div>{{$films->links()}}</div>
</div>
@endsection
</body>
</html>