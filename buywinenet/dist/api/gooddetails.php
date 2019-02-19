<?php
    /*
        详情页 goodlist.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $id = isset($_POST["id"]) ? $_POST["id"]: "";

  
//数据查询
    $sql = "select * from  goodlist where id = $id";
    //执行sql语句
    $res = $connect->query($sql);
    //查询出结果集
    $row = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($row);
     echo json_encode($row , JSON_UNESCAPED_UNICODE);

?>