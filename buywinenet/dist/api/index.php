<?php
    /*
        首页数据 index.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $page = isset($_POST["page"]) ? $_POST["page"]: "";
	$qty = isset($_POST["qty"]) ? $_POST["qty"]: "";

  
//数据查询
    $sql = "select * from indexlist";
    //执行sql语句
    $res = $connect->query($sql);
    //查询出结果集
    $row = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($row);
    // $arr = json_decode($row,true);
    // var_dump($arr);
    $res2 = array_slice($row , ( $page - 1 )*$qty,$qty); 

     echo json_encode($res2, JSON_UNESCAPED_UNICODE);

?>