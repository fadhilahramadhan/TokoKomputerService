<?php
    include_once("koneksi.php");

    $favorit_id  = $_POST['favorit_id'];

    $query      = "DELETE FROM t_favorit WHERE `favorit_id` = $favorit_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    if($result){
        $response['code'] =1;
        $response['message'] = "Barang dihapus dari favorit";
    }else{
        $response['code'] =0;
        $response['message'] = "Maaf Terjadi Kesalahan";
    }

    echo json_encode($response);
?>