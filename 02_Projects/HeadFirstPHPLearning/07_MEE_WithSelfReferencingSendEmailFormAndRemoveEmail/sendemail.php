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
    $output_form = false;

    if(isset($_POST['submit'])){
        if(empty($subject) && empty($text)){
            echo 'You forgot the email subject and body text. <br/>';
            $output_form = true;
        }

        if(empty($subject) && !empty($text)){
            echo 'You forgot the email subject.<br/>';
            $output_form = true;
        }

        if(!empty($subject) && empty($text)){
            $output_form = true;
            echo 'You forgot the body text <br/>';
        }

        if(!empty($subject) && !empty($text)){

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

                echo 'Email sent to : ' . $to . '<br/>';
            }
            mysqli_close($dbc);
        }
    } else {
        $output_form = true;
    }


    if($output_form){
?>


    <form method="post" action="<?php echo $_POST['PHP_SELF']; ?>">
        <label for="subject">Subject of Email</label> <br/>
        <input type="text" id="subject" name="subject" size="30" value="<?php echo $subject ?>"/>  <br/>

        <label for="elvismail">Body of email:</label> <br/>
        <textarea id="elvismail" name="elvismail" rows="8" cols="30">
            <?php echo $text; ?>
        </textarea> <br/>

        <input type="submit" name="submit" value="Submit" />  <br/>
    </form>

<?php
    }
?>