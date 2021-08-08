<?php include "header.php"; 

if ($_SESSION['user_role'] == 0) {
    header("Location: {$hostname}/admin/post.php");
}

?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">All Users</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-user.php">add user</a>
              </div>
              <div class="col-md-12">
                <?php

                    include 'config.php';

                    $limit = 3;

                    if (isset($_GET['page'])) {
                       $page = $_GET['page'];
                    } else {
                        $page = 1;
                    }

                    $offset = ($page - 1) * $limit;

                    $sql = "SELECT * FROM user ORDER BY user_id DESC LIMIT {$offset}, {$limit}";

                    $result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

                    if (mysqli_num_rows($result) > 0) {
                       
                ?>
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Full Name</th>
                          <th>User Name</th>
                          <th>Role</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </thead>
                      <tbody>
                        <?php while($row = mysqli_fetch_assoc($result)){
                        ?>
                          <tr>
                              <td class='id'><?php echo $row['user_id']; ?></td>
                              <td><?php echo $row['first_name'] . " " . $row ['last_name']; ?></td>
                              <td><?php echo $row['username']; ?></td>
                              <td><?php echo $row['role'] == 1?'Admin' : 'User'; ?></td>
                              <td class='edit'><a href='update-user.php?id=<?php echo $row['user_id']; ?>'><i class='fa fa-edit'></i></a></td>
                              <td class='delete'><a href='delete-user.php?id=<?php echo $row['user_id']; ?>'><i class='fa fa-trash-o'></i></a></td>
                          </tr>
                         <?php } ?>
                      </tbody>
                  </table>
                  <?php } 
                  
                //   pagination php

                    $sql1 = "select * from user";

                    $result1 = mysqli_query($conn, $sql1) or die("Query Failed");

                    if (mysqli_num_rows($result1) > 0) {
                        
                        $total_record = mysqli_num_rows($result1);

                        $limit = 3;

                        $total_page = ceil($total_record / $limit);

                        echo "<ul class='pagination admin-pagination'>";

                        if ($page > 1) {
                            echo "<li class=''><a href='users.php?page=" . ($page - 1) . "'>Prev</a></li>";
                        }

                        for ($i = 1; $i <= $total_page; $i++) { 
                            if ($i == $page) {
                                $active = "active";
                            } else {
                                $active = "";
                            }

                            if ($page == $i or $i == $page - 1 or $i == $page + 1 or $i == 1 or $i == $total_page) {

                                if ($i == 1) {
                                    if ($page == 1 or $page == 2 or $page == 3) {
                                        $displayFirst = "none";
                                    } else {
                                        $displayFirst = "inline-block";
                                    }

                                    echo "<li class='$active'><a href= 'users.php?page={$i}'>{$i}</a></li>";

                                    echo "<li style='display:$displayFirst'><a class='btn disabled' href= 'users.php?page={$i}'>...</a></li>";

                                }

                                if ($i == $total_page) {

                                    if ($page == $total_page or $page == $total_page-1 or $page == $total_page - 2) {
                                    $displayLast = "none";
                                    } else {
                                    $displayLast = "inline-block";
                                }
                                    
                                    echo "<li style='display:$displayLast'><a class='btn disabled' href= 'users.php?page={$i}'>...</a></li>";

                                    echo "<li class='$active'><a href= 'users.php?page={$i}'>{$i}</a></li>";

                                }

                                if ($i == 1 or $i == $total_page) {
                                    
                                } else {
                                    echo "<li class='$active'><a href= 'users.php?page={$i}'>{$i}</a></li>";
                                }
                            }
                            
                            
                            
                        }

                        if ($total_page > $page) {
                            
                            echo "<li class=''><a href='users.php?page=" . ($page + 1) . "'>Next</a></li>";
                        }

                        echo "</ul>";
                    }

                            
                  ?>
                  
                      <!-- <li class="active"><a>1</a></li> -->

              </div>
          </div>
      </div>
  </div>
<?php
include "footer.php";
?>
