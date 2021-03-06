
@extends('admin.layouts.master')
@section('title', 'Dashboard')
@section('content')


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">


                <div class="panel-body">

                    <div class="panel-heading">Dashboard</div>

                    <canvas id="canvas" height="280" width="600"></canvas>

                </div>



        </div>
    </div>
    </div>
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>

<script>

    var year = <?php echo $year; ?>;

    var user = <?php echo $user; ?>;

    var barChartData = {

        labels: year,

        datasets: [{

            label: 'User',

            backgroundColor: "lightblue",

            data: user

        }]

    };


    window.onload = function() {

        var ctx = document.getElementById("canvas").getContext("2d");

        window.myBar = new Chart(ctx, {

            type: 'bar',

            data: barChartData,

            options: {

                elements: {

                    rectangle: {

                        borderWidth: 2,

                        borderColor: '#c1c1c1',

                        borderSkipped: 'bottom'

                    }

                },

                responsive: true,

                title: {

                    display: true,

                    text: 'Yearly User Joined'

                }

            }

        });

    };

</script>




               
@endsection


