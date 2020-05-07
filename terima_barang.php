<?php
    include_once("koneksi.php");

    $barang_id  = $_POST['barang_id'];
    $feedback     = $_POST['feedback'];
    $user_id    = $_POST['user_id'];
    $keranjang_id    = $_POST['keranjang_id'];

    $response = array();

    $query      = "UPDATE t_keranjang SET `status_transaksi_id` = 3 WHERE `keranjang_id`=$keranjang_id";
    $result     = mysqli_query($conn, $query);

    if($result){
        $query      = "INSERT INTO t_feedback (`user_id`,`barang_id`,`keranjang_id`,`feedback`)
        VALUES ($user_id,$barang_id,$keranjang_id,'$feedback')";
        $result = mysqli_query($conn, $query);
        

        if($result){
            $response['code'] =1;
            $response['message'] = "Transaksi Selesai";
        }else{
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        }
    }else{
       
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        
    }
    echo json_encode($response);
?>