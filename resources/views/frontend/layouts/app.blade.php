

@include('frontend.layouts.header')
<div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
              @yield('title')
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">

            </ul>
            

            <div class="search">

              <form action="{{ route('search') }}" method="GET" role="search" class="example">
                {{ csrf_field() }}
                <div class="input-group">
                    <input type="text" class="form-control" name="search"
                    placeholder="Search products"> 
                    <button type="submit"><i class="fa fa-search"></i></button>
                    
                </div>
            </form>

        </div>




        <!-- Right Side Of Navbar -->
        <ul class="navbar-nav ml-auto">

            <!-- Authentication Links -->
            @guest
            @if (Route::has('login'))

            <li class="nav-item">
                <a class="nav-link" href="{{ route('welcome') }}">{{ __('Home') }}</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="{{ route('about') }}">{{ __('About') }}</a>
            </li>
            
            @endif
            
            @if (Route::has('register'))
            <li class="nav-item">
                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
            </li>
            @endif
            @else



            <li  class="nav-item {{ Request::is('home') ? 'active' : '' }}"><a  href="{{ route('home') }}" class="nav-link">  Account</a></li>
            <li class="nav-item {{ Request::is('contact') ? 'active' : '' }}"><a  href="{{ route('contact') }}" class="nav-link"> Contact </a></li>


            <li class="nav-item {{ Request::is('product') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('product') }}">{{ __('Product') }}</a>
            </li>
            <!-- tommorow i must to create a new page ,the name is faq is simple page  -->


             <li class="nav-item {{ Request::is('fqa') ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('fqa') }}">{{ __('FAQ') }}</a>
            </li>



            <li class="nav-item dropdown">
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }}
                </a>

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </div>
        </li>
        @endguest
    </ul>


</div>
</div>
</nav>

<main class="py-4">
    @yield('content')
</main>
@include('frontend.layouts.footer')
</div>

