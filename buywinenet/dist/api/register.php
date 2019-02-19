<?php
    /*
        验证用户名 register.php
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $phoneNumber = isset($_POST["phoneNumber"])?$_POST["phoneNumber"] :"";
    // $password = isset($_POST["password"])?$_POST["password"] :"";

     
//验证用户名是否存在
    $sql = "select phoneNumber from user where phoneNumber = $phoneNumber";

    $res = $connect->query($sql);

    $row = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($row);
    if ($row) {
        $cho = array(
            'code' => "0",
            'message' => "该用户名已存在"
        );

    } else {
        $cho = array(
            'code' => "1",
            'message' => "该用户名可以注册"
        );
    }

  echo json_encode($cho, JSON_UNESCAPED_UNICODE);
 
?>