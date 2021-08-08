<div id ="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <?php

                include 'config.php';

                $sql = "SELECT * FROM settings";

                $result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {

            ?>
                <span><?php echo $row['footerdesc'] ?></span>

                <!-- <span>© Copyright 2019 News | Powered by <a href="http://www.yahoobaba.net/">Yahoo Baba</a></span> -->
            <?php 
                    }
                }
            ?>
            </div>
        </div>
    </div>
</div>
</body>
</html>
