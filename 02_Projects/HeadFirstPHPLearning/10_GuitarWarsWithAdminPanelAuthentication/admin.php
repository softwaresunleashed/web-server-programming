<?php
    require_once ('authorize.php');
?>

<?php

    // Add Global variables from config file
    require_once ('appvars.php');
    require_once ('connectvars.php');

    // Connect to the database
    $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) or die('Error connecting to database');

    // Retrieve the score data from MySQL
    $query = "SELECT * FROM guitarwars ORDER BY _score DESC, _date ASC";
    $data = mysqli_query($dbc, $query);

    // Loop through the array of score data, formatting it as HTML
    echo '<table>';
    while($row = mysqli_fetch_array($data)) {
        // Display the score data
        echo '<tr class="scorerow"><td><strong>' . $row['_name'] . '</strong></td>';
        echo '<td>' . $row['_date'] . '</td>';
        echo '<td>' . $row['_score'] . '</td>';
        echo '<td><a href="removescore.php?id=' . $row[_id] . '&amp;date=' . $row['_date'] . '&amp;name=' . $row['_name'] . '&amp;score=' . $row['_score'] . '&amp;screenshot=' . $row['screenshot'] . '">Remove</a></td></tr>';
    }
    echo '</table>';

    mysqli_close($dbc);

?>