<?php
    include_once("koneksi.php");

    $user_id = $_POST['user_id'];
    $query  = "SELECT * FROM t_user WHERE `user_id` = $user_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $response['nama'] = $row['nama'];
        $response['email'] = $row['email'];
        $response['nohp'] = $row['nohp'];
        $response['provinsi'] = $row['provinsi'];
        $response['kab_kota'] = $row['kab_kota'];
        $response['kecamatan'] = $row['kecamatan'];
        $response['alamat_lengkap'] = $row['alamat_lengkap'];
    }
    if(isset($_POST['barang_id']))
    {
        $barang_id = $_POST['barang_id'];
        $query_  = "SELECT * FROM t_barang WHERE `barang_id` = $barang_id";
        $result_ = mysqli_query($conn, $query_);
        while($row_ = mysqli_fetch_assoc($result_))
        {  
            $response['gambar'] = $row_['gambar'];
        }
    }
    echo json_encode($response);
    
?>