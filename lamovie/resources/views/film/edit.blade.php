@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Edit Film</h2>
	{{ Form::model($film,['route' => ['film.update',$film->id],'files'=>true,'enctype'=>'multipart/form-data','method'=>'PATCH']) }}

<div class="form-group">
{{ Form::label('title','Title',array('class'=>'control-label'))}}
{{ Form::text('title',null,array('class'=>'form-control','id'=>'title'))}}
@if($errors->has('title'))
<small>{{ $errors->first('title') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('story','Film Story',array('class'=>'control-label'))}}
{{ Form::textarea('story',null,array('class'=>'form-control','id'=>'story'))}}
@if($errors->has('story'))
<small>{{ $errors->first('story') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('actor','Actor',array('class'=>'control-label'))}}
@foreach($film_info as $data)
	@foreach($data->actors as $aktor)
		@if($aktor->pivot->actor_id != null)
			{{ Form::select('actor',$actor,$aktor->pivot->actor_id,array('class'=>'form-control'))}}
		@else
			{{ Form::select('actor',$actor,null,array('class'=>'form-control'))}}
		@endif
	@endforeach
@endforeach
@if($errors->has('actor'))
<small>{{ $errors->first('actor') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('role','Role',array('class'=>'control-label'))}}
@foreach($film_info as $data)
	@foreach($data->roles as $rowls)
		@if($rowls->pivot->role_id != null)
			{{ Form::select('role',$role,$rowls->pivot->role_id,array('class'=>'form-control'))}}
		@else
			{{ Form::select('role',$role,null,array('class'=>'form-control'))}}
		@endif
	@endforeach
@endforeach
@if($errors->has('role'))
<small>{{ $errors->first('role') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('genre','Genre',array('class'=>'control-label'))}}
@foreach($film_info as $data)
	@foreach($data->genres as $ganra)
		@if($ganra->pivot->genre_id != null)
			{{ Form::select('genre',$genre,$ganra->pivot->genre_id,array('class'=>'form-control'))}}
		@else
			{{ Form::select('genre',$genre,null,array('class'=>'form-control'))}}
		@endif
	@endforeach
@endforeach
@if($errors->has('genre'))
<small>{{ $errors->first('genre') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('producer','Producer',array('class'=>'control-label'))}}
@foreach($film_info as $data)
	@foreach($data->producers as $prodyuser)
		@if($prodyuser->pivot->producer_id != null)
			{{ Form::select('producer',$producer,$prodyuser->pivot->producer_id,array('class'=>'form-control'))}}
		@else
			{{ Form::select('producer',$producer,null,array('class'=>'form-control'))}}
		@endif
	@endforeach
@endforeach
@if($errors->has('producer'))
<small>{{ $errors->first('producer') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('released_at','Released at',array('class'=>'control-label'))}}
{{ Form::date('released_at',null,array('class'=>'form-control','id'=>'released_at'))}}
@if($errors->has('released_at'))
<small>{{ $errors->first('released_at') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('duration','Duration',array('class'=>'control-label'))}}
{{ Form::text('duration',null,array('class'=>'form-control','id'=>'duration'))}}
@if($errors->has('duration'))
<small>{{ $errors->first('duration') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('info','Additional Information',array('class'=>'control-label'))}}
{{ Form::textarea('info',null,array('class'=>'form-control','id'=>'info'))}}
@if($errors->has('info'))
<small>{{ $errors->first('info') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('poster','Image',array('class'=>'control-label'))}}
{{ Form::file('poster', null, array('class' => 'form-control', 'id' => 'poster'))}}
@if($errors->has('poster'))
<small>{{ $errors->first('info') }}</small>
@endif
</div>


	<button type="submit" class="btn btn-primary">Save</button>
	<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
{!! Form::close() !!}
@endsection