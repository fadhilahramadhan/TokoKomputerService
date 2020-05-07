<?php
    include_once("koneksi.php");

    $user_id = $_POST['user_id'];
    $provinsi = $_POST['provinsi'];
    $kab_kota = $_POST['kab_kota'];
    $kecamatan = $_POST['kecamatan'];
    $alamat_lengkap = $_POST['alamat_lengkap'];

    $query  = "UPDATE t_user SET provinsi='$provinsi', kab_kota='$kab_kota',
                kecamatan = '$kecamatan', alamat_lengkap = '$alamat_lengkap'
                 WHERE `user_id` = $user_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $response['message'] = 'Data berhasil disimpan';
    }
    echo json_encode($response);
    
?>