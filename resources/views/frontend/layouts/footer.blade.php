

<!-- Footer -->
<footer class="page-footer font-small teal pt-4">

  <!-- Footer Text -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <div class="form-group">
          @if (Session::has('message'))
          <div class="alert alert-info">{{ Session::get('message') }}</div>
          @endif
        </div>
        <form method="post" action="{{ route('newsletter')}}">
          @csrf



          <label for="Email">Email:</label>
          <input type="text" class="form-control" name="email">



          <button type="submit" class="btn btn-success">Newsltter</button>


        </form>
      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-6 mb-md-0 mb-3">

        <!-- Content -->
        <h5 class="text-uppercase font-weight-bold">Footer text 2</h5>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio deserunt fuga perferendis modi earum
          commodi aperiam temporibus quod nulla nesciunt aliquid debitis ullam omnis quos ipsam, aspernatur id
        excepturi hic.</p>
         <div class="embed-responsive embed-responsive-16by9 mb-4">
          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/vlDzYIIOYmM"
            allowfullscreen></iframe>
          </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Text -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">
    <i class="tim-icons icon-heart-2"></i>
    <p> <script src=" {{ asset('/public/js/currentdetails.js') }}"></script></p>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer --> 

</body>
</html>
