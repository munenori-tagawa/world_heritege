<?php

session_start();
require_once('funcs.php');
loginCheck();

//1. POSTデータ取得
$countryname = $_POST['countryname'];
$name = $_POST['name'];
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
$years = $_POST['years'];
$comment = $_POST['comment'];

//2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare("INSERT INTO gs_cl_table(id, countryname, name, latitude, longitude, years, comment, date) VALUES (NULL, :countryname, :name, :latitude, :longitude, :years, :comment, sysdate())");

//  2. バインド変数を用意
$stmt->bindValue(':countryname', $countryname, PDO::PARAM_STR);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':latitude', $latitude, PDO::PARAM_STR);
$stmt->bindValue(':longitude', $longitude, PDO::PARAM_STR);
$stmt->bindValue(':years', $years, PDO::PARAM_STR);
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);

$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    sql_error($stmt);
} else {
    redirect('select.php');
}
