<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Guitar Wars - Add Your High Scores</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

    <h2>Guitar Wars - Add Your High Scores</h2>

    <?php

        // Add Global variables from config file
        require_once ('appvars.php');
        require_once ('connectvars.php');


        if(isset($_POST['submit'])){
            // Grab the scrore from POST
            $name = $_POST['name'];
            $score = $_POST['score'];
            $screenshot = $_POST['screenshot'];
            $screenshot_type = $_FILES['screenshot']['type'];
            $screenshot_size = $_FILES['screenshot']['size'];


            if(!empty($name) && !empty($score) && !empty($screenshot)){

                if(($screenshot_type == 'image/gif') || ($screenshot_type == 'image/jpeg') || ($screenshot_type == 'image/pjpeg') || ($screenshot_type == 'image/png') && ($screenshot_size > 0) && ($screenshot_size <= GW_MAXFILESIZE)){

                    if($_FILES['screenshot']['error'] == 0) {
                        // Move the file from webserver temp location to more specific target location
                        $target = GW_UPLOADPATH . time() . $screenshot;
                        if (move_uploaded_file($_FILES['screenshot']['tmp_name'], $target)) {
                            // Connect to the database
                            $dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) or die('Error connecting to database');

                            // Write the data to the databse
                            $query = "INSERT INTO guitarwars VALUES (0, NOW(), '$name', '$score', '$target')";
                            mysqli_query($dbc, $query) or die('Error inserting data into database');

                            // Confirm success with the user
                            echo '<p>Thanks for adding your new high score!</p>';
                            echo '<p><strong>Name:</strong>' . $name . '<br/>';
                            echo '<strong>Score:</strong>' . $score . '<br/>';
                            echo '<img src="' . $target . '" alt="Score image" /></p>';
                            echo '<p><a href="index.php"> &lt;&lt; Back to high score</a></p>';

                            // Clear the score data to clear the form
                            $name = "";
                            $score = "";

                            mysqli_close($dbc);
                        } else {
                            // UPLOAD_ERR_INI_SIZE = Value: 1; The uploaded file exceeds the upload_max_filesize directive in php.ini.
                            // UPLOAD_ERR_FORM_SIZE = Value: 2; The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form.
                            // UPLOAD_ERR_PARTIAL = Value: 3; The uploaded file was only partially uploaded.
                            // UPLOAD_ERR_NO_FILE = Value: 4; No file was uploaded.
                            // UPLOAD_ERR_NO_TMP_DIR = Value: 6; Missing a temporary folder. Introduced in PHP 5.0.3.
                            // UPLOAD_ERR_CANT_WRITE = Value: 7; Failed to write file to disk. Introduced in PHP 5.1.0.
                            // UPLOAD_ERR_EXTENSION = Value: 8; A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop; examining the list of loaded extensions with phpinfo() may help.
                            echo '<p class="error">Sorry, there was a problem uploading your screen shot image.</p>';
                            echo 'File Upload Error : ' . $_FILES['screenshot']['error'];
                        }
                    }
                } else {
                    echo '<p class="error">The screen shot must be a GIF, JPEG, or PNG image file no greater than ' . (GW_MAXFILESIZE / 1024) . ' KB in size. </p>';
                }
                // Try to delete the temporary screen shot image file.
                @unlink($_FILES['screenshot']['tmp_name']);

            } else {
                echo '<p class="error">Please enter all of the information to add your high score.</p>';
            }
        }
    ?>

    <hr />

    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" >

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<?php if(!empty($name)) echo $name; ?>" /> <br/>

        <label for="score">Score:</label>
        <input type="text" id="score" name="score" value="<?php if(!empty($score)) echo $score; ?>" /> <br/>

        <input type="hidden" name="MAX_FILE_SIZE" value="32768" />
        <input type="file" id="screenshot" name="screenshot" />

        <hr />
        <input type="submit" value="Add" name="submit" />
    </form>
</body>
</html>