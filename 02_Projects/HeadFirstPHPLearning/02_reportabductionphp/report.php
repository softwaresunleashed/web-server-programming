


<html>
    <head>
        <title>Aliens Abducted Me - Report and Abduction</title>
    </head>

    <body>
        <h2>Aliens Abducted Me - Report an Abduction</h2>

        <?php
            $when_it_happened = $_POST['whenithappened'];
            $how_long = $_POST['howlong'];
            $alien_description = $_POST['aliendescription'];
            $fang_spotted = $_POST['fangspotted'];
            $email = $_POST['email'];

            $name = $_POST['firstname'] . ' ' . $_POST['lastname'];
            $how_many = $_POST['howmany'];
            $what_they_did = $_POST['whattheydid'];
            $other = $_POST['other'];

            echo 'Thanks for submitting the form.<br/>';
            echo 'You were abducted ' . $when_it_happened;
            echo ' and were gone for ' . $how_long . '<br />';
            echo 'Number of Aliens : ' . $how_many . '<br/>';
            echo 'Describe them : ' . $alien_description . '<br />';
            echo 'The aliens did this : ' . $what_they_did . '<br/>';
            echo 'Was Fang there? ' . $fang_spotted . '<br/>';
            echo 'Other comments : ' . $other . '<br/>';
            echo 'Your email address is ' . $email;
        ?>
    </body>

</html>