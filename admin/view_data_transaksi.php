<?php
    include_once("../koneksi.php");

    $query  = "SELECT a.*,b.nama, (SELECT COUNT(*) FROM t_transaksi) as jumlah_transaksi,
 (SELECT COUNT(*) FROM t_keranjang WHERE status_transaksi_id = 1) as jumlah_notifikasi,
 DATE_FORMAT(a.tanggal, '%d %M %Y') as tanggal_beli,
 (SELECT COUNT(*) FROM t_keranjang WHERE transaksi_id = a.transaksi_id) as jumlah, 
 (SELECT SUM(total) FROM t_keranjang WHERE transaksi_id = a.transaksi_id) as total
 FROM t_transaksi a
    INNER JOIN t_user b ON b.user_id = a.user_id";
    $result = mysqli_query($conn, $query);

    $arraydata = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $arraydata[] = $row;
    }

    echo json_encode($arraydata);
?>