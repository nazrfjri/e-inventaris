<?php
include 'koneksi.php';

if(isset($_POST['bsimpan'])) {

    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $asal = $_POST['asal'];
    $jumlah = $_POST['jumlah'];
    $satuan = $_POST['satuan'];
    $tanggal_diterima = $_POST['tanggal_diterima'];

    $gambar = $_FILES['gambar']['name'];
    $tmp_file = $_FILES['gambar']['tmp_name'];
    $upload_dir = 'uploads/';
    $target_file = $upload_dir . $gambar;

    if(move_uploaded_file($tmp_file, $target_file)) {
        echo "Image uploaded successfully.";
    } else {
        echo "Error uploading image.";
    }

    $simpan = "INSERT INTO barang (kode, nama, asal, jumlah, satuan, tanggal_diterima, gambar) VALUES ('$kode', '$nama', '$asal', '$jumlah', '$satuan', '$tanggal_diterima', '$gambar')";

    if(mysqli_query($koneksi, $simpan)){
        echo "Data Disimpan";
    }else{
        echo "Error: ".$simpan."<br>".mysqli_error($koneksi);
    }

    mysqli_close($koneksi);
    header("location:index.php");
}
?>