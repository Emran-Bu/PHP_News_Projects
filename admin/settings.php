<?php include "header.php"; ?>
<div id="admin-content">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
        <h1 class="admin-heading">Website Setting</h1>
    </div>
    <div class="col-md-offset-3 col-md-6">
    <?php

        include 'config.php';

        $sql = "SELECT * FROM settings";

            $result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {

    ?>
        <!-- Form for setting-->
        <form action="save-settings.php" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="form-group">
                <input type="hidden" name="post_id"  class="form-control" value="" placeholder="">
            </div>
            <div class="form-group">
                <label for="website_name">Website Name</label>
                <input type="text" name="website_name"  class="form-control" id="exampleInputUsername" value="<?php echo $row['websitename'] ?>">
            </div>
            <div class="form-group">
                 <label for="footer_desc"> Footer Description</label>
                <textarea name="footer_desc" class="form-control"  required rows="5">
                    <?php echo $row['footerdesc'] ?>
                </textarea>
            </div>
            <div class="form-group">
                <label for="">Website Logo</label>
                <input type="file" name="logo">
                <img  src="images/<?php echo $row['logo']; ?>" height="150px">
                <input type="hidden" name="old-logo" value="<?php echo $row['logo'] ?>">
            </div>
            <input type="submit" name="submit" class="btn btn-primary" value="Save" />
        </form>
        <?php 
                }
            }
        ?>
        <!-- Form End -->
      </div>
    </div>
  </div>
</div>
<?php include "footer.php"; ?>
