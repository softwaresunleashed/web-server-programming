<?php
/**
 * Created by PhpStorm.
 * User: sudhanshu
 * Date: 09/12/16
 * Time: 7:23 PM
 */

    $dbc = mysqli_connect('localhost', 'root', 'root', 'elvis_store') or die('Error connecting to MySQL server');

    $first_name = $_POST['firstname'];
    $last_name = $_POST['lastname'];
    $email = $_POST['email'];

    $query = "INSERT INTO email_list(first_name, last_name, email) VALUES('$first_name','$last_name','$email')";

    mysqli_query($dbc, $query) or die('Error executing query on database');

    echo 'Customer Added';

    mysqli_close($dbc);


?>