@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Edit Actor</h2>
	{{-- {{ Form::model($actor,['route' => ['actor.update',$actor->id]]) }}
	{{csrf_field()}}
	{{ method_field('PATCH') }} --}}
	{{ Form::model($actor,['route' => ['actor.update',$actor->id],'files'=>true,'enctype'=>'multipart/form-data','method'=>'PATCH']) }}


	{{-- <div class="form-group">
		<label for="name" class="control-label">Name</label>
		{{ Form::text('name',null,array('class'=>'form-control','id'=>'name')) }}
	</div> --}}

	<div class="form-group">
		{{ Form::label('name','Name',array('class'=>'control-label'))}}
		{{ Form::text('name',null,array('class'=>'form-control','id'=>'name'))}}
		@if($errors->has('name'))
			<small>{{ $errors->first('name') }}</small>
		@endif
	</div>
{{-- 
	<div class="form-group">
		<label for="note" class="control-label">Note</label>
		{{ Form::textarea('note',null,array('class'=>'form-control','id'=>'note')) }}
	</div> --}}

	<div class="form-group">
		{{ Form::label('note','Note',array('class'=>'control-label'))}}
		{{ Form::textarea('note',null,array('class'=>'form-control','id'=>'note'))}}
		@if($errors->has('note'))
			<small>{{ $errors->first('note') }}</small>
		@endif
	</div>

		<div class="form-group">
		{{ Form::label('poster','Image',array('class'=>'control-label'))}}
		{{ Form::file('poster', Request::old('poster'), array('class' => 'form-control', 'id' => 'poster'))}}
		@if($errors->has('poster'))
		<small>{{ $errors->first('info') }}</small>
		@endif
		</div>

	<button type="submit" class="btn btn-primary">Save</button>
	<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
{!! Form::close() !!}
@endsection