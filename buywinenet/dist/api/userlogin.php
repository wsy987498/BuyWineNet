<?php
    /*
        用户登录验证 userlogin.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $phoneNumber = isset($_POST["phoneNumber"])?$_POST["phoneNumber"] :"";
    $password = isset($_POST["password"])?$_POST["password"] :"";
  
//判断用户密码是否存在
    $sql = "select * from user where phoneNumber = '$phoneNumber' and password = '$password'";
    //执行sql语句
    $res = $connect->query($sql);
    //查询出结果集
    $row = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($row);
    //判断用户名密码是否存在于数据库
    if ($row) {
        $cho = array(
            'code' => "1",
            'message' => "用户名密码正确！"
        );

    } else {
        $cho = array(
            'code' => "0",
            'message' => "请输入正确的用户名和密码！"
        );
    }
    echo json_encode($cho, JSON_UNESCAPED_UNICODE);

?>