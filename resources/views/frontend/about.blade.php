@extends('frontend.layouts.app')
@section('title', 'About')
@section('content')
<div class="container">
    <div class="row">
    <div class="col-md-12">
                <div class="card-header">{{ __('About') }}</div>

                <div class="card-body">

    <p><b> Today is: {{ $today }} </b></p>



<div style="float:left; width:30%">

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
 It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
 It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently
  with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

</div>



<div class="mapouter" style="float: right"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=romania%20Targu-Mures%20str%20cutezantei&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://embedgooglemap.net/163/">idea</a></div><style>
.mapouter{position:relative;text-align:right;height:500px;width:600px;}
.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}
</style>
</div>


  </div>


  </div>  

  </div>  

@endsection
