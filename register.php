<?php
    include_once("koneksi.php");

    $nama = $_POST['nama'];
    $email  = $_POST['email'];
    $password  = $_POST['password'];

    $cek = mysqli_query($conn,"SELECT * from t_user where email='$email'");
    $result = mysqli_num_rows($cek);

    $response = array();

    if($result > 0){
        
            $response['code'] ='2';
            $response['message'] = "Email sudah terpaikai";
    }else{
            $tambah = mysqli_query($conn,"INSERT INTO t_user (`nama`,`email`,`password`)
                                            VALUES ('$nama','$email',md5('$password'))");
            if($tambah){
                $response['code'] ='1';
                $response['message'] = "Berhasil membuat akun baru";
            }else{
                $response['code'] ='0';
                $response['message'] = "Maaf terjadi kesalahan";
            }
    }  

    echo json_encode($response);
?>