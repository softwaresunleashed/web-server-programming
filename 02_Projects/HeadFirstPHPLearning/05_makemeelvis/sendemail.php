<?php
/**
 * Created by PhpStorm.
 * User: sudhanshu
 * Date: 11/12/16
 * Time: 9:41 AM
 */

    $from = 'elmer@makemeelvis.com';
    $subject = $_POST['subject'];
    $text = $_POST['elvismail'];

    $dbc = mysqli_connect('localhost', 'root', 'root', 'elvis_store') or die('Error connecting to database...');
    $query = "SELECT * FROM email_list";
    $result = mysqli_query($dbc, $query) or die('Error executing SQL query...');

    // mysqli_fetch_array() fetches one row at a time from the temporary resource id of sql server in $result
    while($row = mysqli_fetch_array($result) or die('Error fetching row from database...')){

        $first_name = $row['first_name'];
        $last_name = $row['last_name'];
        $msg = "Dear $first_name $last_name, \n $text";
        $to = $row['email'];
        mail($to, $subject, $msg, 'From: ' . $from);

//        echo $row['first_name'] . ' ' . $row['last_name'] . ' : ' . $row['email'] . '<br/>';
        echo 'Email sent to : ' . $to . '<br/>';

    }

    mysqli_close($dbc);

?>