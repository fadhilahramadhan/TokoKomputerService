<?php
    include_once("koneksi.php");

    $barang_id  = $_POST['barang_id'];
    $jumlah     = $_POST['jumlah'];
    $user_id    = $_POST['user_id'];

    $cek = mysqli_query($conn,"SELECT * FROM t_keranjang WHERE user_id=$user_id AND barang_id=$barang_id AND status=0");
    $hasil = mysqli_num_rows($cek);

    if($hasil >0){
        $query      = "UPDATE t_keranjang SET `jumlah` = $jumlah WHERE `user_id`=$user_id AND `barang_id`= $barang_id AND status=0";
        $result = mysqli_query($conn, $query);
        $response = array();

        if($result){
            $response['code'] =1;
            $response['message'] = "Jumlah barang dirubah";
        }else{
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        }
    }else{
        $query      = "INSERT INTO t_keranjang (`user_id`,`barang_id`,`jumlah`)
                        VALUES ($user_id,$barang_id,$jumlah)";
        $result = mysqli_query($conn, $query);

        $response = array();

        if($result){
            $response['code'] =1;
            $response['message'] = "Barang ditambah ke Keranjang";
        }else{
            $response['code'] =0;
            $response['message'] = "Maaf Terjadi Kesalahan";
        }
    }
    echo json_encode($response);
?>