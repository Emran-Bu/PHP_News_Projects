<?php

include 'config.php';

$cat_id = $_GET['id'];

$sql = "DELETE FROM category where category_id = {$cat_id}";

if (mysqli_query($conn, $sql)) {
    header("Location: {$hostname}/admin/category.php");
} else {
    echo "<p style='color: red; text-align:center; margin: 10px 0;'>Can't delete the Category record</p>";
}

mysqli_close($conn);

?>