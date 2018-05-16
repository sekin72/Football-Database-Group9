<?php
session_start();
$_SESSION['whologged'] = null;

$mysql = new mysqli('localhost','root', '' ,'mysql');
$username = mysqli_real_escape_string($mysql, $_POST['email']);
$password = mysqli_real_escape_string($mysql, $_POST['password']);

if($username == "admin"){
    session_start();
    $_SESSION['whologged'] = 0;
    $_SESSION['user'] = $username;
    header("location: index_admin.php");
    $mysql->close();
    exit();
}

$sqlDirector = "SELECT * FROM person p, director c WHERE p.person_id = c.director_id and (email = '$username' and password = '$password')";
$sqlDoctor = "SELECT * FROM doctor d, person p WHERE p.person_id = d.doctor_id and (email = '$username' and password = '$password')";
$sqlAgent = "SELECT * FROM agent a, person p WHERE p.person_id = a.agent_id and (email = '$username' and password = '$password')";


//Director
$result = $mysql->query("SELECT * FROM person p, director c WHERE p.person_id = c.director_id and (email = '$username' and password = '$password')");
$count = mysqli_num_rows($result);
if($count > 0){
    session_start();
    $_SESSION['whologged'] = 1;
    $_SESSION['user'] = $username;
    header("location: index_director.php");
    $mysql->close();
    exit();
}
//Doctor
$result = $mysql->query("SELECT * FROM doctor d, person p WHERE p.person_id = d.doctor_id and (email = '$username' and password = '$password')");
$count = mysqli_num_rows($result);
if($count > 0){
    session_start();
    $_SESSION['whologged'] = 2;
    $_SESSION['user'] = $username;
    header("location: index_doctor.php");
    $mysql->close();
    exit();
}
//Agent
$result = $mysql->query("SELECT * FROM agent a, person p WHERE p.person_id = a.agent_id and (email = '$username' and password = '$password')");
$count = mysqli_num_rows($result);
if($count > 0){
    session_start();
    $_SESSION['whologged'] = 3;
    $_SESSION['user'] = $username;
    header("location: index_agent.php");
    $mysql->close();
    exit();
}

?>
