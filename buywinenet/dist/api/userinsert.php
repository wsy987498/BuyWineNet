<?php
    /*
        用户密码插入数据库 userinsert.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $phoneNumber = isset($_POST["phoneNumber"])?$_POST["phoneNumber"] :"";
    $password = isset($_POST["password"])?$_POST["password"] :"";
     
    //插入数据
    $sql1 ="insert into user (phoneNumber,password) values ('$phoneNumber','$password')";
    //执行sql语句
    $res1 = $connect->query($sql1);
    //查询结果集
    // $row1 = $res1->fetch_all(MYSQLI_ASSOC);
    // var_dump($res1);
    if ($res1) {
        $cho = array(
            'code' => "1",
            'message' => "插入成功！"
        );

    } else {
        $cho = array(
            'code' => "0",
            'message' => "插入失败！"
        );
    }

  echo json_encode($cho, JSON_UNESCAPED_UNICODE); 
 
?>