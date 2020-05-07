<?php
    include_once("koneksi.php");

    if(isset($_GET['user_id']) && $_GET['user_id'] != null){
        $user_id = $_GET['user_id'];
    $query  = "SELECT * FROM t_favorit a
                INNER JOIN t_barang b ON b.barang_id = a.barang_id
                INNER JOIN l_merk c ON c.merk_id = b.merk_id
                WHERE a.user_id = $user_id";
    $result = mysqli_query($conn, $query);

    $arraydata = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $arraydata[] = $row;
    }

    echo json_encode($arraydata);
}
?>