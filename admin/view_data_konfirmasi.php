<?php
    include_once("../koneksi.php");

    $arraydata = array();
            $query  = "SELECT *, DATE_FORMAT(d.tanggal, '%d %M %Y') as tanggal_beli,
            a.total as total_harga,a.user_id as user_id,a.transaksi_id as transaksi_id,
             a.barang_id as barang_id,a.keranjang_id as keranjang_id,f.nama as nama_user,b.nama
                        FROM t_keranjang a
                                   INNER JOIN t_barang b ON b.barang_id = a.barang_id
                                   INNER JOIN l_merk c ON c.merk_id = b.merk_id
                                   INNER JOIN t_transaksi d ON d.transaksi_id = a.transaksi_id
                                   LEFT OUTER JOIN t_feedback e ON a.keranjang_id = e.keranjang_id
                                   INNER JOIN t_user f ON f.user_id = a.user_id
                                    WHERE  status_transaksi_id =1  ";
            $result = mysqli_query($conn, $query);

            

            while($row = mysqli_fetch_assoc($result))
            {
                $arraydata[] = $row;
            }
        
    echo json_encode($arraydata);

?>