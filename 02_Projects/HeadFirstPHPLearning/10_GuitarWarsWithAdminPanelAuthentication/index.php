<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Guitar Wars - High Scores</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

    <h2>Guitar Wars - High Scores</h2>
    <p>Welcome, Guitar Warrior, do you have what it takes to crack the high score list? <br/>
        If so, just <a href="addscore.php"> add your own score</a> </p>
    <br/>

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
        $i = 0;
        while($row = mysqli_fetch_array($data)){
            // Display the score data
            if($i == 0){
                echo '<tr><td colspan="2" class="topscoreheader">Top Score : ' . $row['_score'] . '</td></tr>';
            }
            echo '<tr><td class="scoreinfo">';
            echo '<span class="score">' . $row['_score'] . '</span> <br/>';
            echo '<strong>Name:     </strong>' . $row['_name'] . '<br/>';
            echo '<strong>Date:     </strong>' . $row['_date'] . '<br/>';
            if(is_file($row['screenshot']) && filesize($row['screenshot'])){
                echo '<td><img src="' . $row['screenshot'] . '" alt="Score Image"/> </td> </tr>';
            } else {
                echo '<td><img src="' . GW_UPLOADPATH . 'unverified.jpg" alt="Unverified Score"/> </td> </tr>';
            }
            $i++;
        }
        echo '</table>';

        mysqli_close($dbc);

    ?>

</body>
</html>