<?php
session_start();
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Jumbotron Template for Bootstrap</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-danger">
    <a class="navbar-brand" href="#">Football Database</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index_homescreen.php">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index_players_list.php">Players</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index_club_list.php">Clubs</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index_leagues_list.php">Leagues</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index_games_list.php">Games</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index_doctor_myteam.php">My Team <span class="sr-only">(current)</span></a>
            </li>

    </div>
    </ul>

    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Dr. Ekinsu Bozdağ<span class="sr-only">(current)</span></a>
            </li>
<!-- modal-->

            <p><button type="button" class="btn btn-info" data-toggle="modal" data-target="#signup"><b>Edit Profile</b></button></p>


    </form>

    </div>
</nav>

<div class="modal fade" id="signup" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="text-primary">Edit Your Profile</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form  method="post" action="" role="form" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-md-3">Your Name *:</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="name" value="" placeholder="Please Enter Your Name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Email address *:</label>
                            <div class="col-md-9">
                                <input type="email" class="form-control" name="email" value="" placeholder="Please Enter Your Email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password *:</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="password" value="" placeholder="Please Enter Your password" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Retype Password *:</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="repassword" value="" placeholder="Please Enter Retype Your password" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3"></div>
                            <div class="col-md-9">
                                <input type="submit" name="Edit" value="Edit" class="btn btn-info">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>



<main role="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="well login-box">
                    <form action="">
                        <legend>Call in injured player for treatment</legend>
                        <div class="form-group">

                            <label for="Player ID">Player ID</label>
                            <input value='' id="Player ID" placeholder="ID" type="text" class="form-control" />
                        </div>

                        <div class="form-group text-center">
                            <p><button type="button" class="btn btn-info" data-toggle="modal" data-target="#callin"><b>Call in</b></button></p>


                            <button class="btn btn-danger btn-cancel-action">Cancel</button>



                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="callin" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="text-primary">Warning was sent to Player!</h3>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <div class="container">

        <img src="https://static3.depositphotos.com/1003523/236/i/450/depositphotos_2366121-stock-photo-stethoscope-with-football.jpg" class="img-thumbnail" alt="Cinque Terre" style="width:30%">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-4">
                <h2>Injured Players</h2>
                <p>Players that have been injured in recent games...</p>
                <p><a class="btn btn-secondary" href="injured_players.php" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <h2>Latest Transfers</h2>
                <p> Overview of the most recent transfers...</p>
                <p><a class="btn btn-secondary" href="latest_transfers.php" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <h2>The Richest Clubs</h2>
                <p> Overview of top 10 richest clubs...</p>
                <p><a class="btn btn-secondary" href="richest_clubs.php" role="button">View details &raquo;</a></p>
            </div>
        </div>

        <hr>

    </div> <!-- /container -->

</main>

<footer class="container">
    <p> Group 9</p>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
</body>
</html>
