@extends('frontend.layouts.app')
@section('title', 'Result Search')
@section('content')


<div class="container">


	<div class="card">
		<div class="container-fliud">
			<div class="wrapper row">
				<div class="preview col-md-6">

       @if($products->isNotEmpty())

					@foreach ($products    as $key => $product)


					<div class="preview-pic tab-content">

						<div class="tab-pane active" id="pic-1">    <a href="#"><img src="{{ asset('/public/uploads/' . $product->image) }}" alt="product" class="img-responsive"></a></div>
						<div class="tab-pane" id="pic-2"><img src="{{ asset('/public/uploads/' . $product->image) }}" alt="product" class="img-responsive"></div>
						<div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/126"></div>
						<div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						<div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>


	<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						</ul>
						</div>

					<div class="details col-md-6">
						<h3 class="product-title">{{ $product->name }}</h3>
            <p>Categorie :<strong>{{ optional($product->category)->name }}</strong></p>
						<p class="product-description">{{ $product->description}}</p>
						<p class="price">current price: <span>$ {{ $product->price}}</span></p>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>


					@endforeach
          @else
		<div>
			<h2>No product found</h2>
		</div>
		@endif


				</div>

			</div>
		</div>
	</div>



@endsection
