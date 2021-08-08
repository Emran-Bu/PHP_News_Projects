<?php

    include 'config.php';

    if (empty($_FILES['new-image']['name'])) {
        $file_name = $_POST['old-image'];
    }
    
    else {
        $errors = array();
        $file_name = mt_rand().$_FILES['new-image']['name'];
        $file_size = $_FILES['new-image']['size'];
        $file_tmp = $_FILES['new-image']['tmp_name'];
        $file_type = $_FILES['new-image']['type'];
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
            $path = "upload/$old_img";
            unlink($path);
            // if ($post_id == $_GET['id']) {
            //     unlink($path);
            // }
            move_uploaded_file($file_tmp, "upload/".$file_name);
        }else {
            print_r($errors);
            die();
        }
    }

   $sql = "UPDATE post set title='{$_POST['post_title']}', description='{$_POST['postdesc']}', category={$_POST['category']}, post_img='{$file_name}'
    WHERE post_id = {$_POST["post_id"]};";

    if ($_POST['old_category'] != $_POST['category']) {
        $sql .= "UPDATE category set post = post - 1 where category_id = {$_POST['old_category']};";
        $sql .= "UPDATE category set post = post + 1 where category_id = {$_POST['category']};";
    }

    

    $result = mysqli_multi_query($conn, $sql) or die("Query Unsuccessful");

    if ($result) {
        header("Location: {$hostname}/admin/post.php");
    }

?>