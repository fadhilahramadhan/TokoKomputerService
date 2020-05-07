<?php
    include_once("koneksi.php");

    $user_id = $_POST['user_id'];
    $nama = $_POST['nama'];
    $nohp = $_POST['nohp'];

    $query  = "UPDATE t_user SET nama='$nama', nohp='$nohp' WHERE `user_id` = $user_id";
    $result = mysqli_query($conn, $query);

    $response = array();

    while($row = mysqli_fetch_assoc($result))
    {
        $response['message'] = 'Data berhasil disimpan';
    }
    echo json_encode($response);
    
?>