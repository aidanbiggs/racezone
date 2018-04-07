          <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
              <div class="container">
                  <a class="navbar-brand" href="{{ url('/') }}">
                    RaceZone
                  </a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                  </button>
  
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <!-- Left Side Of Navbar -->
                      <ul class="navbar-nav mr-auto">
  
                      </ul>
                      
                      <ul class="navbar-nav mr-auto">
                          <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="/about">About</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="/posts/create">Create a Race!</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" href="/posts">View Races</a>
                            </li>
                        </ul>
                      <!-- Right Side Of Navbar -->
                      
                      <ul class="navbar-nav ml-auto">
                          <!-- Authentication Links -->
                          @guest
                              <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                              <li><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></li>
                          @else
                              <li class="nav-item dropdown">
                                  
                                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                      {{ Auth::user()->name }} <span class="caret"></span>
                                  </a>
  
                                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a href="/dashboard" class ="dropdown-item">Dashboard</a></li>
                                     <li> <a class="dropdown-item" href="{{ route('logout') }}"
                                         onclick="event.preventDefault();
                                                       document.getElementById('logout-form').submit();">
                                          {{ __('Logout') }}
                                      </a></li>
  
                                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                          @csrf
                                      </form>
                                    </ul>
                              </li>
                          @endguest
                      </ul>
                  </div>
              </div>
          </nav>
  

  <!-- <ul class="nav navbar-nav navbar-right">
      <li><a href="/posts/create">Create Post </a></li>
    </ul> !-->