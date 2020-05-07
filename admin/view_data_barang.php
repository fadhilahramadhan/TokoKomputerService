<?php
    include_once("../koneksi.php");

    $query  = "SELECT *,(SELECT COUNT(*) FROM t_barang) as jumlah_barang FROM t_barang a
    INNER JOIN l_merk b ON b.merk_id = a.merk_id";
    $result = mysqli_query($conn, $query);

    $arraydata = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $arraydata[] = $row;
    }

    echo json_encode($arraydata);
?>