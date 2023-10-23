<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html" charset="utf-8"/>
    <title>Guitar Wars - Remove a High Score</title>
    <link rel="stylesheet" type="text/css" href="style.css"
</head>

<body>
    <h2>Guitar Wars - Remove a High Score</h2>

    <?php
        require_once ('appvars.php');
        require_once ('connectvars.php');

        if(isset($_GET['id']) && isset($_GET['date'])
            && isset($_GET['name']) && isset($_GET['score'])
            && isset($_GET['screenshot']) ){

            // Grab the score data from the GET
            $id = $_GET['id'];
            $date = $_GET['date'];
            $name = $_GET['name'];
            $score = $_GET['score'];
            $screenshot = $_GET['screenshot'];

        } else if(isset($_POST['id']) && isset($_POST['name']) && isset($_POST['score'])  ){

            // Grab the score data from the POST
            $id = $_POST['id'];
            $name = $_POST['name'];
            $score = $_POST['score'];

        } else {
            echo '<p class="error">Sorry, no high score was specified for removal.</p>';
        }

        if(isset($_POST['submit'])){
            if($_POST['confirm'] == 'Yes'){
                // Delete the screen shot image file from the server
                @unlink(GW_UPLOADPATH . $screenshot);

                // Connect to the database
                $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) or die('Error Connecting to database');

                // Delete the score data from the database
                $query = "DELETE FROM guitarwars WHERE _id=$id LIMIT 1";
                mysqli_query($dbc, $query) or die('Error executing query on database');
                mysqli_close($dbc);

                // Confirm success with the user
                echo '<p>The high score of ' . $score . ' for ' . $name . ' was successfully removed.';
            } else {
                echo '<p class="error">The high score was not removed.</p>';
            }
        } else if(isset($id) && isset($name) && isset($date) && isset($score) && isset($screenshot)){
            echo '<p>Are you sure you want to delete the following high score?</p>';
            echo '<p>';
            echo '<strong>Name : </strong>' . $name . '<br/>';
            echo '<strong>Date : </strong>' . $date . '<br/>';
            echo '<strong>Score : </strong>' . $score . '<br/>';
            echo '</p>';
            echo '<form method="post" action="removescore.php">';
            echo '<input type="radio" name="confirm" value="Yes" /> Yes';
            echo '<input type="radio" name="confirm" value="No" checked="checked"/> No <br/>';
            echo '<input type="submit" value="Submit" name="submit" />';

            echo '<input type="hidden" name="id" value="' . $id . '" />';
            echo '<input type="hidden" name="name" value="' . $name . '" />';
            echo '<input type="hidden" name="score" value="' . $score . '" />';
            echo '</form>';
        }

        echo '<p><a href="admin.php"> &lt;&lt; Back to admin page </a> </p>';

    ?>

</body>
</html>











