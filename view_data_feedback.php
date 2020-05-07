<?php
    include_once("koneksi.php");

    if(isset($_GET['barang_id']) && $_GET['barang_id'] != null){
        $barang_id = $_GET['barang_id'];
    $query  = "SELECT * FROM t_feedback a
                INNER JOIN t_user b ON b.user_id = a.user_id
                WHERE a.barang_id = $barang_id";
    $result = mysqli_query($conn, $query);

    $arraydata = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $arraydata[] = $row;
    }

    echo json_encode($arraydata);
}
?>