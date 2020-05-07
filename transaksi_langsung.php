<?php
    include_once("koneksi.php");

    $user_id   = $_POST['user_id'];
    $jasa_pengiriman   = $_POST['jasa_pengiriman'];
    $bank    = $_POST['bank'];
    $total    = $_POST['total'];
    $barang_id    = $_POST['barang_id'];
    $jumlah    = $_POST['jumlah'];

    $query      = "INSERT INTO t_keranjang (`user_id`,`barang_id`,`jumlah`,`status_transaksi_id`)
    VALUES ($user_id,$barang_id,$jumlah,1)";
    $result = mysqli_query($conn, $query);


    $query      = "INSERT INTO t_transaksi (user_id,total,jasa_pengiriman,bank)
                        VALUES ($user_id,$total,'$jasa_pengiriman','$bank')";
                $result = mysqli_query($conn, $query);
    
    $response = array();

    if($result){
        $query  = "UPDATE t_keranjang SET `status` = 1 WHERE `user_id`=$user_id AND status = 0";
        $result = mysqli_query($conn, $query);

        if($result){
            $response['code'] =1;
            $response['message'] = "Transaksi Berhasil, Menunggu konfirmasi pembelian";
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