@extends('layouts.app')

@section('body')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if ($message = Session::get('success'))
                    <div class="alert alert-success alert-block">
                    {{-- <button type="button" class="close" data-dismiss="alert">×</button> --}}
                    <strong>{{ $message }}</strong>
                    </div>
                    @endif

                   <h1>THIS IS THE HOME PAGE</h1>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
