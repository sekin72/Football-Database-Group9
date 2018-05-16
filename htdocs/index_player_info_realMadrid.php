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

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-warning">
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
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </ul>
    </div>
</nav>

<main role="main">

        <img src="https://static.brusheezy.com/system/resources/previews/000/014/339/non_2x/real-madrid-logo-photoshop-psds.jpg" style="width:20%" height="20%">

    </div>
    </div>

    <div class="panel-body" style="text-align:center;margin: auto;width: 50%;   padding: 150px;">
        <div class="col-md-6" style="width:100%">

            <thead>
            <tr>
                <th>Name</th></br>
                <th>Colors</th></br>
                <th>Establishment Date</th></br>
                <th>Stadium</th></br>
                <th>Number Of Cups</th></br>
                <th>Number Of Stars</th></br>
            </tr>
            </thead>
        </div>

    </div>
    </div>
    <div class="table-responsive">



        </table>
    </div>
    <hr>

    </div> <!-- /container -->
    <div class="container">
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