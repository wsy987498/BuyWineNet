<?php
    /*
        connect.php (连接数据库)  
    */ 
    //防止中文乱码
    header("content-type:text/html;charset=utf-8");

    //设置配置信息
    $servername = "localhost";//本地主机名  实际开发用实际的主机名
    $username = "root";//数据库用户名
    $password = "";//数据库密码
    $database = "buywinenet";//连接的数据库名称

    //连接数据库
    $connect = new mysqli($servername,$username,$password,$database);

    //判断是否连接成功
    if($connect -> connect_error){
        die("连接失败！：" . connect_error); //php 拼接用点 
    }else{
        // echo "数据库连接成功！";
    }

?>