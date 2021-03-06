<div id="sidebar">
  <div class="sidebar-wrapper">
      <div class="logo">
          <a href="#" class="simple-text logo-mini">{{ __('BD') }}</a>
          <a href="#" class="simple-text logo-normal">{{ __('Black Dashboard') }}</a>
      </div>


  <ul class="list-unstyled components">
      <li class="nav-item {{ Request::is('dashboard') ? 'active' : '' }}">
        <a  href="{{ route('admin.dashboard') }}"     class="nav-link {{ request()->is('admin/dashboard') || request()->is('admin/dashboard/*') ? 'active' : '' }}">
    
     <i class="fa fa-fw fa-home"></i>
        {{ __('Dashboard') }} </a> 

      </li>
      <li class="nav-item {{ Request::is('admin.pages.profile') ? 'active' : '' }}">
     
       <a href="{{ route('admin.pages.profile')  }}"  class="nav-link {{ request()->is('admin/profile') || request()->is('admin/profile') ? 'active' : '' }}">
   <i class='fas fa-user-alt'></i>
         {{ __('User Profile') }}
       </a>
     </li>

     
     <li class="nav-item">

      <a href="{{ route('admin.categories.index') }}" class="nav-link {{ request()->is('admin/categories') || request()->is('admin/categories') ? 'active' : '' }}">
        <i class="fa fa-list-alt" aria-hidden="true"></i>

        {{ trans('cruds.categ.title') }}
      </a>
    </li>


    <li class="nav-item">
         
      <a href="{{ route('admin.products.index') }}" class="nav-link {{ request()->is('admin/products') || request()->is('admin/products') ? 'active' : '' }}">
 <i class="fa-fw fas fa-cogs nav-icon"></i>
        {{ trans('cruds.product.title') }}
      </a>
    </li>



   <li class="nav-item">
         
      <a href="{{ route('admin.pages.email') }}" class="nav-link {{ request()->is('admin/email') || request()->is('admin/email') ? 'active' : '' }}">
 <i class="fa-fw fas fa-cogs nav-icon"></i>
        {{ trans('cruds.email.title') }}
      </a>
    </li>



 <li class="nav-item " >
    <a  href="{{ route('admin.pages.calendar')  }}" class="nav-link  {{ request()->is('admin/calendar') || request()->is('admin/calendar') ? 'active' : '' }}">
      <i class="fa fa-calendar" style="font-size:24px"></i>


    {{ __('Calendar') }} </a>

  </li>




          <li class="nav-item">
                    <a href="{{ route('admin.venues.index') }}" class="nav-link {{ request()->is('admin/venues') || request()->is('admin/venues') ? 'active' : '' }}">
                        <i class="fa-fw fas fa-cogs nav-icon">

                        </i>
                        {{ __('Venues') }}
                    </a>
                </li>
       
                <li class="nav-item">
                    <a href="{{ route('admin.events.index') }}" class="nav-link {{ request()->is('admin/events') || request()->is('admin/events') ? 'active' : '' }}">
                        <i class="fa-fw fas fa-cogs nav-icon">

                        </i>
                        {{ __('Event') }}
                    </a>
                </li>
       
                <li class="nav-item">
                    <a href="{{ route('admin.meetings.index') }}" class="nav-link {{ request()->is('admin/meetings') || request()->is('admin/meetings') ? 'active' : '' }}">
                        <i class="fa-fw fas fa-cogs nav-icon">

                        </i>
                        {{ __('Meetings') }}
                    </a>
                </li>
           

  

  <li class="nav-item">
   
    <a href="{{ route('admin.sitemap.index') }}" class="nav-link {{ request()->is('admin/sitemap') || request()->is('admin/sitemap') ? 'active' : '' }}">
 <i class="fa fa-sitemap"></i>

      {{ __('Sitemap') }}


    </a>
  </li>
  <li>
    <a class="dropdown-item" href="{{ route('admin.logout') }}"
    onclick="event.preventDefault();
    document.getElementById('logout-form').submit();">
    <i class="nav-icon fas fa-fw fa-sign-out-alt">

    </i>    {{ __('Logout') }}
  </a>

  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    @csrf
  </form>

</li>
</ul>
</div>
</div>