<?php

    include 'config.php';

    if (empty($_FILES['logo']['name'])) {
        $file_name = $_POST['old-logo'];
    }
    
    else {
        $errors = array();
        $file_name = mt_rand().$_FILES['logo']['name'];
        $file_size = $_FILES['logo']['size'];
        $file_tmp = $_FILES['logo']['tmp_name'];
        $file_type = $_FILES['logo']['type'];
        $file_ext = strtolower(end(explode('.', $file_name)));
        $extension = array("jpeg", "jpg", "png");
    
        if (in_array($file_ext, $extension) === false) {
            $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
        }
    
        if ($file_size > 2097152) {
            $errors[] = "File size must be 2mb or lower.";
        }
    
        if (empty($errors) == true) {
            $old_img = $_REQUEST['old-image'];
            $path = "images/$old_img";
            unlink($path);
            // if ($post_id == $_GET['id']) {
            //     unlink($path);
            // }
            move_uploaded_file($file_tmp, "images/".$file_name);
        }else {
            print_r($errors);
            die();
        }
    }

   $sql = "UPDATE settings set websitename='{$_POST['website_name']}', footerdesc='{$_POST['footer_desc']}', logo='{$file_name}'";

    $result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

    if ($result) {
        header("Location: {$hostname}/admin/settings.php");
    }

?>
