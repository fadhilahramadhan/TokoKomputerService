<?php
    include_once("../koneksi.php");

    $barang_id  = $_POST['barang_id'];
    
    $query      = "DELETE FROM t_barang WHERE `barang_id` = $barang_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    if($result){
        $response['code'] =1;
        $response['message'] = "Barang berhasil dihapus";
    }else{
        $response['code'] =0;
        $response['message'] = "Maaf Terjadi Kesalahan";
    }

    echo json_encode($response);
?>