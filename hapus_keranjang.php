<?php
    include_once("koneksi.php");

    $keranjang_id  = $_POST['keranjang_id'];
    
    $query      = "DELETE FROM t_keranjang WHERE `keranjang_id` = $keranjang_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    if($result){
        $response['code'] =1;
        $response['message'] = "Barang dihapus dari Keranjang";
    }else{
        $response['code'] =0;
        $response['message'] = "Maaf Terjadi Kesalahan";
    }

    echo json_encode($response);
?>