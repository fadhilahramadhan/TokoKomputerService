<?php
    include_once("../koneksi.php");

    $keranjang_id    = $_POST['keranjang_id'];

    $response = array();

    $query      = "UPDATE t_keranjang SET `status_transaksi_id` = 2 WHERE `keranjang_id`=$keranjang_id";
    $result     = mysqli_query($conn, $query);

    if($result){
      
            $response['code'] =1;
            $response['message'] = "Proses pengiriman selesai";
        
    }else{
       
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        
    }
    echo json_encode($response);
?>