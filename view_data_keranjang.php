<?php
    include_once("koneksi.php");
$arraydata = array();
    if(isset($_GET['user_id']) && $_GET['user_id'] != null){
        if(isset($_GET['status_transaksi_id']) && $_GET['status_transaksi_id'] != null){
            $user_id = $_GET['user_id'];
            $status_transaksi_id = $_GET['status_transaksi_id'];
            $query  = "SELECT *, DATE_FORMAT(d.tanggal, '%d %M %Y') as tanggal_beli,a.total as total_harga,a.user_id as user_id,a.transaksi_id as transaksi_id, a.barang_id as barang_id,a.keranjang_id as keranjang_id
            FROM t_keranjang a
                       INNER JOIN t_barang b ON b.barang_id = a.barang_id
                       INNER JOIN l_merk c ON c.merk_id = b.merk_id
                       INNER JOIN t_transaksi d ON d.transaksi_id = a.transaksi_id
                       LEFT OUTER JOIN t_feedback e ON a.keranjang_id = e.keranjang_id
                        WHERE a.user_id = $user_id AND status_transaksi_id =$status_transaksi_id 
                        group by a.keranjang_id";
            $result = mysqli_query($conn, $query);


            while($row = mysqli_fetch_assoc($result))
            {
                $arraydata[] = $row;
            }
        }else{
            $user_id = $_GET['user_id'];
            if(isset($_GET['transaksi_id']) && $_GET['transaksi_id'] != 0){
                $transaksi_id = $_GET['transaksi_id'];
                $query_  = "SELECT * FROM t_keranjang a
                            INNER JOIN t_barang b ON b.barang_id = a.barang_id
                            INNER JOIN l_merk c ON c.merk_id = b.merk_id
                            WHERE a.user_id = $user_id AND a.transaksi_id = $transaksi_id AND a.status=1";
                $result_ = mysqli_query($conn, $query_);
                
                while($row_ = mysqli_fetch_assoc($result_))
                {
                    $arraydata[] = $row_;
                    
                }
            }else{
                
                $query  = "SELECT * FROM t_keranjang a
                            INNER JOIN t_barang b ON b.barang_id = a.barang_id
                            INNER JOIN l_merk c ON c.merk_id = b.merk_id
                            WHERE a.user_id = $user_id AND a.status = 0";
                $result = mysqli_query($conn, $query);

                while($row = mysqli_fetch_assoc($result))
                {
                    $arraydata[] = $row;
                }
            }
        }
    echo json_encode($arraydata);
}
?>