<?php
require 'vendor/autoload.php';

$phpWord = new \PhpOffice\PhpWord\PhpWord();

$id_movie = $_GET['id_movie'];
$sql = "SELECT * from movie where id_movie=".$id_movie;

$result = mysqli_query($koneksi, $sql);
$row = mysqli_fetch_assoc($result);

$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor('C:\laragon\www\TRY\movie_app\template.docx');
$templateProcessor->setValue('judul_movie', $row['judul_movie']);
$templateProcessor->setValue('tahun', $row['tahun']);
$templateProcessor->setValue('deskripsi', $row['deskripsi']);

$templateProcessor->saveAs('movie.docx');

// $objWriter = \PhpOffice\PhpWord\IDFactory::createWriter($phpWord, 'Word2007');
// $objWriter->save('movie.docx');