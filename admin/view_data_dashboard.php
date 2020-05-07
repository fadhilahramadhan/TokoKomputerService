<?php
    include_once("../koneksi.php");

    $response = array();

    $query_jumlah_barang  = "SELECT COUNT(*) as jumlah_barang  FROM t_barang";
    $result_jumlah_barang = mysqli_query($conn, $query_jumlah_barang);
    $row_jumlah_barang = mysqli_fetch_assoc($result_jumlah_barang);
    
    $response['jumlah_barang'] = $row_jumlah_barang['jumlah_barang'];

    $query_jumlah_transaksi  = "SELECT COUNT(*) as jumlah_transaksi  FROM t_transaksi";
    $result_jumlah_transaksi = mysqli_query($conn, $query_jumlah_transaksi);
    $row_jumlah_transaksi = mysqli_fetch_assoc($result_jumlah_transaksi);
    
    $response['jumlah_trankasi'] = $row_jumlah_transaksi['jumlah_transaksi'];

    $query_jumlah_barang_terjual  = "SELECT COUNT(*) as jumlah_barang_terjual  FROM t_keranjang where status_transaksi_id != 0";
    $result_jumlah_barang_terjual = mysqli_query($conn, $query_jumlah_barang_terjual);
    $row_jumlah_barang_terjual = mysqli_fetch_assoc($result_jumlah_barang_terjual);
    
    $response['jumlah_barang_terjual'] = $row_jumlah_barang_terjual['jumlah_barang_terjual'];

    $query_total_pendapatan  = "SELECT SUM(total) as jumlah_total_pendapatan  FROM t_keranjang where status_transaksi_id != 0";
    $result_total_pendapatan = mysqli_query($conn, $query_total_pendapatan);
    $row_total_pendapatan = mysqli_fetch_assoc($result_total_pendapatan);
    
    $response['jumlah_total_pendapatan'] = $row_total_pendapatan['jumlah_total_pendapatan'];

    $query_jumlah_user  = "SELECT COUNT(*) as jumlah_user  FROM t_user where userlevel = 1";
    $result_jumlah_user = mysqli_query($conn, $query_jumlah_user);
    $row_jumlah_user = mysqli_fetch_assoc($result_jumlah_user);
    
    $response['jumlah_user'] = $row_jumlah_user['jumlah_user'];
    
    $query_jumlah_feedback  = "SELECT COUNT(*) as jumlah_feedback  FROM t_feedback";
    $result_jumlah_feedback = mysqli_query($conn, $query_jumlah_feedback);
    $row_jumlah_feedback = mysqli_fetch_assoc($result_jumlah_feedback);
    
    $response['jumlah_feedback'] = $row_jumlah_feedback['jumlah_feedback'];

    echo json_encode($response);
?>