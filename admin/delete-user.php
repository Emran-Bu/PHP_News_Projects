<?php

    if ($_SESSION['user_role'] == 0) {
        header("Location: {$hostname}/admin/post.php");
    }


    include 'config.php';

    $user_id = $_GET['id'];

    $sql = "DELETE FROM user WHERE user_id = {$user_id}";

    $result = mysqli_query($conn, $sql) or die("Query Failed");

    if (isset($result)) {
        header("Location: {$hostname}/admin/users.php");
    } else {
        echo "<p style='color: red; text-align:center; margin: 10px 0;'>Can't delete the user record</p>";
    }

    mysqli_close($conn);

?>