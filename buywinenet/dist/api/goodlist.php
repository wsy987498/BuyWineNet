<?php
    /*
        列表页 goodlist.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $page = isset($_POST["page"]) ? $_POST["page"]: "";
    $qty = isset($_POST["qty"]) ? $_POST["qty"]: "";
    $m = isset($_POST["m"]) ? $_POST["m"]: "";
    
    // select * from goodlist order by itemprice DESC 价格降序
    //select * from goodlist order by itemprice ASC  价格升序    
    //页面初始化
    if($m=="show"){
        //数据查询
        $sql = "select * from goodlist";
        //执行sql语句
        $res = $connect->query($sql);
        //查询出结果集
        $row = $res->fetch_all(MYSQLI_ASSOC);
        // var_dump($row);
        $arr = $res->num_rows;
        // var_dump($arr);
        $res = array_slice($row , ( $page - 1 )*$qty,$qty); 
        // var_dump($res);
        $datalist = array(
             "total"=>$arr,
             "list"=>$res,
             "page"=>$page,
             "qty"=>$qty,
        );
         echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
    }

    //综合排序
    if($m=="zhonghe"){
         $sql1 = "select * from goodlist order by zhonghe DESC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
            "total"=>$arr1,
            "list"=>$res1,
            "page"=>$page,
            "qty"=>$qty,
       );
        echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
    }
    
    //销量排序
    if($m=="xiaoliang"){
        $sql1 = "select * from goodlist order by  sales DESC";
       $res1 = $connect->query($sql1);
       $row1 = $res1->fetch_all(MYSQLI_ASSOC);
       $arr1= $res1->num_rows;
       $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
       // var_dump($row1);
       $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }

      //评价排序
     if($m=="assnum"){
        $sql1 = "select * from goodlist order by  assnum DESC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }

     //时间排序 desc
     if($m=="timedesc"){
        $sql1 = "select * from goodlist order by  time DESC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }
    //时间排序 asc
    if($m=="timeasc"){
        $sql1 = "select * from goodlist order by  time ASC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }

    //价格排序 desc
    if($m=="pricedesc"){
        $sql1 = "select * from goodlist order by itemprice DESC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }

    //价格排序 asc
    if($m=="priceasc"){
        $sql1 = "select * from goodlist order by itemprice ASC";
        $res1 = $connect->query($sql1);
        $row1 = $res1->fetch_all(MYSQLI_ASSOC);
        $arr1= $res1->num_rows;
        $res1= array_slice($row1 , ( $page - 1 )*$qty,$qty); 
        // var_dump($row1);
        $datalist = array(
           "total"=>$arr1,
           "list"=>$res1,
           "page"=>$page,
           "qty"=>$qty,
      );
       echo json_encode($datalist , JSON_UNESCAPED_UNICODE);
   }
   

?>