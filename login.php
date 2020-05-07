<?php
    include_once("koneksi.php");

    $email  = $_POST['email'];
    $password  = $_POST['password'];

    $login = mysqli_query($conn,"select * from t_user where email='$email' and password=md5('$password')");
    $result = mysqli_num_rows($login);
    $row = mysqli_fetch_assoc($login);

    $response = array();

    if($result > 0){
        
            $response['code'] ='1';
            $response['id'] = $row['user_id'];
            $response['userlevel'] = $row['userlevel'];
            $response['message'] = "Anda Berhasil Login";
    }else{
        
            $response['code'] ='0';
            $response['message'] = "Email atau Password salah!";
    }  

    echo json_encode($response);
?>