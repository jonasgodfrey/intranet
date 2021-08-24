
 <?php
 include("inc/header.php");
 
if(!loggedin()){
  header('Location: login.php');
}else{
         
           
 
            include("inc/aside.php");

            $result1 = mysqli_query($conn,"SELECT * FROM `staffprofile`");
            $report = mysqli_num_rows($result1);

            $result2 = mysqli_query($conn,"SELECT * FROM   `publications` ");
            $report2 = mysqli_num_rows($result2);

            $result3 = mysqli_query($conn,"SELECT * FROM `blog`");
            $report3 = mysqli_num_rows($result3);          
 }    
 ?>

<?php  
require ('inc/dbconnect.php');
$message = ""; 
$message2 = ""; 



if(isset($_POST['publish'])){

        // Variables for user submit form()
        $headline = $_POST['headline'];
        $news = $_POST['news'];
       


            $query = "INSERT INTO `publications`(`headline`, `News`)VALUES('$headline','$news')";

            if($query_run = mysqli_query($conn, $query)){

              $message =  "<div class=\"alert alert-info\">
              <a href=\"addpatient.php\" class=\"close\" data-dismiss=\"alert\" aria-label=\"check\">&times;</a>
               Published Successfully.</div>";

            }else{
             $message2 =  "<div class=\"alert alert-danger\">
                <a href=\"register.php\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
                 Kindly fill this form again</div>";
                }

 

 }
 
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3><?php echo $report2;?></h3>

                <p>Publications</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="#" class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          
         
          <!-- ./col -->
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-pink">
              <div class="inner">
              <h3><?php echo $report; ?></h3>

                <p>Active Staff</p>
              </div>
              <div class="icon">
                <i class="fa fa-users"></i>
              </div>
              <a href="pend.php" class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->

          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3><?php echo $report3;?></h3>

                <p>Blog Post</p>
              </div>
              <div class="icon">
                <i class="fa fa-book"></i>
              </div>
              <a href="#" class="small-box-footer"><i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          
        </div>
       
        <div class="row">
      
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
       
       
        
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Published News</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>SN</th>
                    <th>Headline</th>
                    <th>Description</th>
                    
                    <th>Date Published</th>  
                    <!-- <th>Attachment</th> -->
                    <!-- <th>Action</th>                   -->
                  </tr>
                  </thead>
                  <tbody>
                  <?php
                           
                            $sql = "SELECT `headline`, `News`, `datecreated` FROM `publications` 
                            ORDER BY `datecreated` DESC";
                            $result = $conn->query($sql);
                            $counter = 0;

                            if($result->num_rows > 0){
                              while ($row = $result-> fetch_assoc()){

                                $view ="<a href='javascript:;' onClick='pickRows(" . json_encode($row) .")' 
                                data-toggle='modal' data-target='#exampleModal' class='btn btn-success btn-sm' id='resolvedbtn' style='width:100%'>
                                
                                <i class='fa fa-eye'></i></a>";
                                
                                // $download = "<a href='download.php?filename=".$row['filename']."&f=".$row['filename']."'>
                                // <button class='btn btn-sm btn-primary'>Download Attachment</button></a>";

                                echo "<tr>
                                <td>".++$counter."</td>
                                <td>".$row["headline"]."</td>
                                <td>".$row['News']."</td>                               
                                <td>".$row['datecreated']."</td>                           
                                </tr>";
                                // $counter++;

                              }

                            }
                            else{
                              echo "0 result";
                            }
                            ?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>SN</th>
                    <th>Headline</th>
                    <th>Latest News</th>
                    <th>Date Published</th> 
                      <!-- <th>Attachment</th> -->
                    <!-- <th>Action</th>                   -->
                  </tr>
                  </tfoot>
                </table>

              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
          <div class="card card-pink">
              <div class="card-header">
                <h3 class="card-title">Active Staff</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Sn</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Birthday</th>                   
                  </tr>
                  </thead>
                  <tbody>
                  <?php

                            require('inc/dbconnect.php');
                           
                            $sql = "SELECT `drname`, `email`, `dob` FROM `staffprofile`  ORDER BY CreatedAt DESC";
                            $result = $conn->query($sql);
                            $counter = 0;



                            if($result->num_rows > 0){
                              while ($row = $result-> fetch_assoc()){

                            

                                echo "<tr>
                                <td>".++$counter."</td>
                                <td>".$row["drname"]."</td>
                                <td>".$row['email']."</td>                               
                                <td>".$row['dob']."</td>                               
                               
                                

                                </tr>";
                                // $counter++;

                              }

                            }
                            else{
                              echo "0 result";
                            }
                            ?>
                  </tbody>
                  <tfoot>
               
                  <tr>
                    <th>Sn</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Birthday</th>                   
                  </tr>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
  </div>
  <!-- /.content-wrapper -->
  

  <?php
 include("inc/aside.php");
 ?>
 <?php
 include("inc/footer.php");
 ?>
