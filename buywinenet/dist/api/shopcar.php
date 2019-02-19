<?php
    /*
       购物车 shopcar.php
       id：商品id
       name：商品名称
       imgurl：图片路径
       price：商品价格
       qty：商品数量
       thisid：要删除的当前id值

       m：ajax请求的判断
       Post方式
    */ 
    header("content-type:text/html;charset=utf-8"); 
    include "connect.php";

    $id = isset($_POST["id"]) ? $_POST["id"]: "";
    $name = isset($_POST["name"]) ? $_POST["name"]: "";
    $imgurl = isset($_POST["imgurl"]) ? $_POST["imgurl"]: "";
    $price = isset($_POST["price"]) ? $_POST["price"]: "";
    $qty = isset($_POST["qty"]) ? $_POST["qty"]: "";
    $inventory = isset($_POST["inventory"]) ? $_POST["inventory"]: "";
    $thisid = isset($_POST["thisid"]) ? $_POST["thisid"]: "";
    $m = isset($_POST["m"]) ? $_POST["m"]: "";

    /*
    shopcar：
      购物车页面数据的渲染
    */
    if($m=="shopcar"){
      //数据查询
       $sql = "select * from  shopcarlist"; 
       $res = $connect->query($sql);   //执行sql语句
       $row = $res->fetch_all(MYSQLI_ASSOC); //查询出结果集
      // var_dump($row);
      echo json_encode($row , JSON_UNESCAPED_UNICODE);
    }


    /*
    add:
       把数据加入到购物车 
    */
    if($m=="add"){
    //根据id查询数据库购物车表
        $sql1 = "select * from shopcarlist where id =$id";
        $res1 = $connect->query($sql1)->num_rows; 
        // echo json_encode($res1 , JSON_UNESCAPED_UNICODE);
        //  var_dump ($res1);
        //语句执行成功 根据(num_rows)长度判断是否存在
        if($res1){
        //该商品存在  数量增加
          $sql2 = "update shopcarlist set qty=$qty+qty where id=$id";
          $res2 = $connect->query($sql2);
         if($res2){
          $cho = array(
            'code' => "1",
            'message' => "该商品已存在，给您更新数量"
           );
         }
          echo json_encode($cho , JSON_UNESCAPED_UNICODE);
        }else{
        //商品不存在 插入到数据库
          $sql3 = "insert into shopcarlist (id,name,img,price,qty,inventory) values('$id','$name','$imgurl','$price','$qty','$inventory')";
          $res3 = $connect->query($sql3);
          if($res3){
            $cho = array(
              'code' => "0",
              'message' => "成功添加到购物车"
             );
          }
          echo json_encode($cho , JSON_UNESCAPED_UNICODE);
        }
    }

    /*
    thisdel:
        thisid[i]删除单行数据
        delall[i]删除全部数据 、清空购物车
    */ 
    if($m=="thisdel"){
      //数据查询
      $sql = "delete from shopcarlist where id = $thisid"; //删除语句sql 
      $res = $connect->query($sql); //执行sql语句
      // var_dump($res);
      //如果语句执行成功
      if($res){
           $cho = array(
            'code' => "1",
            'message' => "删除成功"
           );
      }else{
          $cho = array(
            'code' => "0",
            'message' => "删除失败"
           );
      }
      //echo信息给前端
      echo json_encode($cho , JSON_UNESCAPED_UNICODE);
    }
?>