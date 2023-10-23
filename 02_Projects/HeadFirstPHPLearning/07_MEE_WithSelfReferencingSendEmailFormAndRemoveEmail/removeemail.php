
<p>
Please select the email addresses to delete from the email list and click remove...
</p>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">

    <?php

    $dbc = mysqli_connect('localhost', 'root', 'root', 'elvis_store') or die('Error connecting to remote server');

    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    // Delete the customer rows (only if form is submitted)
    if(isset($_POST['submit'])){
        foreach ($_POST['todelete'] as $delete_id){
            $query = "DELETE FROM email_list WHERE id=$delete_id";
            mysqli_query($dbc, $query) or die('Error deleting rows from the table');
        }

        echo 'Customers removed...';

    }

    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    // Display the customer rows with checkboxes for deleting
    $query = "SELECT * FROM email_list";
    $result = mysqli_query($dbc, $query);

    while($row = mysqli_fetch_array($result)){
        echo '<input type="checkbox" value="' . $row['id'] . '" name="todelete[]" />';
        echo ' ' . $row['first_name'];
        echo ' ' . $row['last_name'];
        echo ' ' . $row['email'];
        echo '<br/>';
    }

    mysqli_close($dbc);
    ?>

    <input type="submit" name="submit" value="Remove" />

</form>


