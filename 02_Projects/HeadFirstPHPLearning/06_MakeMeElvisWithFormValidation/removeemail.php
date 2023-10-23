<?php
/**
 * Created by PhpStorm.
 * User: sudhanshu
 * Date: 13/12/16
 * Time: 7:13 PM
 */

    $dbc = mysqli_connect('localhost', 'root', 'root', 'elvis_store') or die('Error connecting to remote server');

    $email_to_remove = $_POST['email_to_remove'];

    $query = "DELETE FROM email_list WHERE email='$email_to_remove'";

    mysqli_query($dbc, $query);

    echo "Customer Removed : " . $email_to_remove;

    mysqli_close($dbc);


?>