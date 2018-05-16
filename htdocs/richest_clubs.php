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

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
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


    <div class="jumbotron">
        <div class="container ">
            <div class="row">
                <div class="panel-body" style="text-align:center;margin: auto;width: 100%;   padding: 10px;">
                    <div class="col-md-6" style="width:100%">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Club ID</th>
                                <th>Name</th>
                                <th>Director</th>
                                <th>Colors</th>
                                <th>Date of Establishment</th>
                                <th>Stadium</th>
                                <th>Number of Cups</th>
                                <th>Number of Stars</th>
                                <th>Total Amount</th>
                                <th>League</th>
                            </tr>
                            </thead>

                            <?php

                            echo "<tbody style= 'text-align:left'>";


                            $mysql = new mysqli('localhost','root', '' ,'mysql');
                            $result = $mysql->query('SELECT * FROM person as p, (club NATURAL JOIN director NATURAL JOIN coach) WHERE p.person_id=director_id ORDER BY total_amount DESC LIMIT 5 ');

                            while($row = $result->fetch_array()){
                                $id = $row['club_id'];
                                $name = $row['name'];
                                $dir = $row['first_name'];
                                $dir1 = $row['last_name'];
                                $colors = $row['colors'];
                                $est = $row['date_of_establishment'];
                                $stad = $row['stadium'];
                                $cups = $row['number_of_cups'];
                                $stars = $row['number_of_stars'];
                                $money = $row['total_amount'];
                                $lig = $row['league'];

                                echo "<tr>
                                        <td>$id</td>
                                        <td>$name</td>
                                        <td>$dir $dir1</td>
                                        <td>$colors</td>
                                        <td>$est</td>
                                        <td>$stad </td>
                                        <td>$cups</td>
                                        <td>$stars</td>
                                        <td>$money</td>
                                        <td>$lig</td>
                                </tr>";
                            }
                            echo "</tbody>";

                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


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
