<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/email-modal.js') }}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('css/navbar.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('css/email.css') }}">
</head>
<body>
    <div id="app">
        <nav id="nav" class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
              {{--   <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button> --}}

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="{{url('/')}}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <li><a href="">View</a>
                                    <ul>
                                        <li><a href="{{route('film.index')}}">Movie</a></li>
                                        <li><a href="{{route('actor.index')}}" >Actor</a></li>
                                       
                                            <li><a href="{{route('producer.index')}}">Producer</a></li>
                                            <li><a href="{{route('genre.index')}}">Genre</a></li>
                                            <li><a href="{{route('role.index')}}">Role</a></li>
                                         @if(Auth::user()->name == "admin")
                                            <li><a href="{{route('user.index')}}">User</a></li>
                                        @endif
                                    </ul>   
                                </li>
                               @if(Auth::user()->name == "admin")
                                    <li><a href="">Create</a>
                                        <ul>
                                            <li><a href="{{route('film.create')}}">Movie</a></li>
                                            <li><a href="{{route('actor.create')}}" >Actor</a></li>
                                            <li><a href="{{route('producer.create')}}">Producer</a></li>
                                            <li><a href="{{route('genre.create')}}">Genre</a></li>
                                            <li><a href="{{route('role.create')}}">Role</a></li>
                                        </ul>
                                    </li>
                                @endif

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                               
                            </li>

                            <div class="user-email">
                                @if(Auth::user()->name != "admin")
                                    <button onclick="document.getElementById('id01').style.display='block'">Compose Email</button>
                                @endif
                            </div>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <br>
        <main class="py-4">
            @yield('body')

            

            <div id="id01" class="modal">
                <div class="modal-content">
                   <center><h3>Compose Email</h3></center>

                   <form method="post" action="{{ url('sendemail/send') }}">
                        {{ csrf_field() }}
                       <textarea name="message"></textarea>
                        @if($errors->has('message'))
                        <small>{{ $errors->first('message') }}</small>
                        @endif
                       <br>
                       <input type="submit" name="send" value="Send">
                    </form>
                </div>
                
            </div>
        </main>
    </div>
</body>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</html>
