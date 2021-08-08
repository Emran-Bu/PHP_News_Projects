<?php include 'header.php'; ?>
    <div id="main-content">
      <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                  
                  <?php
                    include 'config.php';

                    if (isset($_GET['search'])) {
                        $search_term = mysqli_real_escape_string($conn, $_GET['search']);
                    }
                    
                ?>
                  <h2 class="page-heading">Search : <?php echo $search_term ?></h2>

                  <?php

                            $limit = 3;
        
                            if (isset($_GET['page'])) {
                                $page = $_GET['page'];
                            } else {
                                $page = 1;
                            }
        
                            $offset = ($page - 1) * $limit;

                            $sql = "SELECT * FROM post
                            join category
                            on post.category = category.category_id
        
                            join user
                            on post.author = user.user_id
                            where post.title LIKE '%{$search_term}%' or post.description LIKE '%{$search_term}%'
                            order by post.post_id desc
                            LIMIT {$offset}, {$limit}";

                            $result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
        
                        ?>
                        <div class="post-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <a class="post-img" href="single.php?id=<?php echo $row['post_id']; ?>"><img src="admin/upload/<?php echo $row['post_img']; ?>" alt=""/></a>
                                </div>
                                <div class="col-md-8">
                                    <div class="inner-content clearfix">
                                        <h3><a href='single.php?id=<?php echo $row['post_id']; ?>'><?php echo $row['title'] ?></a></h3>
                                        <div class="post-information">
                                            <span>
                                                <i class="fa fa-tags" aria-hidden="true"></i>
                                                <a href='category.php?cid=<?php echo $row["category"] ?>'><?php echo $row['category_name'] ?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                <a href='author.php?aid=<?php echo $row['author'] ?>'><?php echo $row['username'] ?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                                <?php echo $row['post_date'] ?>
                                            </span>
                                        </div>
                                        <p class="description">
                                        <?php echo substr($row['description'], 0, 200) . "(...)" ?>
                                        </p>
                                        <a class='read-more pull-right' href='single.php?id=<?php echo $row['post_id']; ?>'>read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                            }
                        }else {
                            echo"<h2>No Record Found</h2>";
                        }

                        //   pagination php

                            $sql1 = "SELECT * from post 
                            where post.title LIKE '%{$search_term}%'";

                            $result1 = mysqli_query($conn, $sql1) or die("Query Failed");

                            if (mysqli_num_rows($result1) > 0) {
                                
                                $total_record = mysqli_num_rows($result1);

                                $limit = 3;

                                $total_page = ceil($total_record / $limit);

                                echo "<ul class='pagination admin-pagination'>";

                                if ($page > 1) {
                                    echo "<li class=''><a href='search.php?search={$search_term}&page=" . ($page - 1) . "'>Prev</a></li>";
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

                                            echo "<li class='$active'><a href= 'search.php?search={$search_term}&page={$i}'>{$i}</a></li>";

                                            echo "<li style='display:$displayFirst'><a class='btn disabled' href= 'search.php?search={$search_term}&page={$i}'>...</a></li>";

                                        }

                                        if ($i == $total_page) {

                                            if ($page == $total_page or $page == $total_page-1 or $page == $total_page - 2) {
                                            $displayLast = "none";
                                            } else {
                                            $displayLast = "inline-block";
                                        }
                                            
                                            echo "<li style='display:$displayLast'><a class='btn disabled' href= 'search.php?search={$search_term}&page={$i}'>...</a></li>";

                                            echo "<li class='$active'><a href= 'search.php?search={$search_term}&page={$i}'>{$i}</a></li>";

                                        }

                                        if ($i == 1 or $i == $total_page) {
                                            
                                        } else {
                                            echo "<li class='$active'><a href= 'search.php?search={$search_term}&page={$i}'>{$i}</a></li>";
                                        }
                                    }
                                    
                                    
                                    
                                }

                                if ($total_page > $page) {
                                    
                                    echo "<li class=''><a href='search.php?search={$search_term}&page=" . ($page + 1) . "'>Next</a></li>";
                                }

                                echo "</ul>";
                            }

                        ?>
                </div><!-- /post-container -->
            </div>
            <?php include 'sidebar.php'; ?>
        </div>
      </div>
    </div>
<?php include 'footer.php'; ?>
