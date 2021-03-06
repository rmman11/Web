@extends('frontend.layouts.app')
@section('title', 'home')
@section('content')
 <script src="{{ asset('/public/js/weather.js') }}"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container">
        <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center sm:pt-0">
            @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/home') }}" class="text-sm text-gray-700 underline">Home</a>
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
                        @endif
                    @endauth
                </div>
            @endif







<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Calculator
  </button>



<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
About Project
</button>
 
  <button type="button"   onclick="openWindow()" class="btn btn-info">Aplicatie Vreme</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">About Us</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>

<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Calculator</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>


        
<script  src="{{ asset('/public/js/calculator.js') }}"></script>
        <!-- Modal body -->
        <div class="modal-body">

<table border="1">
<tr>
<td><input type="button" value="c" onclick="clr()"/> </td>
<td colspan="3"><input type="text" id="edu"/></td>
<!-- clr() function will call clr to clear all value -->
</tr>
<tr>
<!-- creating buttons and assigning values-->
<td><input type="button" value="+" onclick="dis('+')"/> </td>
<td><input type="button" value="1" onclick="dis('1')"/> </td>
<td><input type="button" value="2" onclick="dis('2')"/> </td>
<td><input type="button" value="3" onclick="dis('3')"/> </td>
</tr>
<tr>
<td><input type="button" value="-" onclick="dis('-')"/> </td>
<td><input type="button" value="4" onclick="dis('4')"/> </td>
<td><input type="button" value="5" onclick="dis('5')"/> </td>
<td><input type="button" value="6" onclick="dis('6')"/> </td>
</tr>
<tr>
<td><input type="button" value="*" onclick="dis('*')"/> </td>
<td><input type="button" value="7" onclick="dis('7')"/> </td>
<td><input type="button" value="8" onclick="dis('8')"/> </td>
<td><input type="button" value="9" onclick="dis('9')"/> </td>
</tr>
<tr>
<td><input type="button" value="/" onclick="dis('/')"/> </td>
<td><input type="button" value="." onclick="dis('.')"/> </td>
<td><input type="button" value="0" onclick="dis('0')"/> </td>
<!-- Evaluating function call eval()-->
<td><input type="button" value="=" onclick="solve()"/> </td>
</tr>
</table>
        
     
        
      </div>
    </div>
  </div>








     
                </div>

 </div>
      

             
@endsection