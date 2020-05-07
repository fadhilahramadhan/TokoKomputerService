<?php
    include_once("koneksi.php");

    $barang_id  = $_POST['barang_id'];
    $user_id    = $_POST['user_id'];

    $cek = mysqli_query($conn,"SELECT * FROM t_favorit WHERE user_id=$user_id AND barang_id=$barang_id");
    $hasil = mysqli_num_rows($cek);

    if($hasil >0){

        if($hasil){
            $response['code'] =1;
            $response['message'] = "Barang sudah ada di Favorit";
        }else{
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        }
    }else{
        $query      = "INSERT INTO t_favorit (`user_id`,`barang_id`)
                        VALUES ($user_id,$barang_id)";
        $result = mysqli_query($conn, $query);

        $response = array();

        if($result){
            $response['code'] =1;
            $response['message'] = "Barang ditambah ke Favorit";
        }else{
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        }
    }

    echo json_encode($response);
?>