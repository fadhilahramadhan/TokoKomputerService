<?php
    include_once("../koneksi.php");
    $response = array();
    $nama_barang  = $_POST['nama_barang'];
    $harga    = $_POST['harga'];
    $merk    = $_POST['merk'];
    $spesifikasi    = $_POST['spesifikasi'];
    $deskripsi    = $_POST['deskripsi'];
    $gambar    = $_POST['gambar'];
    $folder = "../gambar/";

    $folder =  rand() . "_" .time().".jpeg";
    if(file_put_contents("../gambar/".$folder, base64_decode($gambar))){

        $cek = mysqli_query($conn,"SELECT * FROM l_merk WHERE merk='$merk'");
        $hasil = mysqli_num_rows($cek);
    
        if($hasil >0){
           $row_hasil_merk = mysqli_fetch_assoc($cek);

            $query      = "INSERT INTO t_barang (`nama`,`harga`,`merk_id`,`spesifikasi`,`deskripsi`,`gambar`)
                            VALUES ('$nama_barang',$harga,".$row_hasil_merk['merk_id'].",'$spesifikasi','$deskripsi','$folder')";
            $result = mysqli_query($conn, $query);         

            if($result){
                $response['code'] =1;
                $response['message'] = "Berhasil menambahkan barang";
            }else{
                $response['code'] =0;
                $response['message'] = "Maaf Terjadi Kesalahan";
            }
        }else{
            $query      = "INSERT INTO l_merk (`merk`)
            VALUES ('$merk')";
            $result = mysqli_query($conn, $query);
            if($result){
                $ambil_merk = mysqli_query($conn,"SELECT * FROM l_merk WHERE merk='$merk'");
                $hasil_merk = mysqli_num_rows($ambil_merk);
    
                if($hasil_merk >0){
                    $row_hasil_merk = mysqli_fetch_assoc($ambil_merk);

                    $query      = "INSERT INTO t_barang (`nama`,`harga`,`merk_id`,`spesifikasi`,`deskripsi`,`gambar`)
                            VALUES ('$nama_barang',$harga,".$row_hasil_merk['merk_id'].",'$spesifikasi','$deskripsi','$folder')";
                    $result = mysqli_query($conn, $query);         

                    if($result){
                        $response['code'] =1;
                        $response['message'] = "Berhasil menambahkan barang";
                    }else{
                        $response['code'] =0;
                        $response['message'] = "Maaf Terjadi Kesalahan, error :02";
                    }
                }

            }else{
                $response['code'] =0;
                $response['message'] = "Maaf Terjadi Kesalahan, error : 01";
            }
        }

    }else{
        $response['code'] =0;
        $response['message'] = "Maaf Terjadi Kesalahan, error : 00";
    }

        

    echo json_encode($response);
?>