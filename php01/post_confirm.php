<?php
function h($value){
    return htmlspecialchars($value, ENT_QUOTES);
}
$flg = 0;
$name = $_POST["name"];
$mail = $_POST["mail"];
$str = ("$name,$mail");

//File書き込み
//課題は名前とメールの変数をカンマ区切りの文字列にしてファイルに書き込めるようにしてください
$file = fopen("data/data.txt","a");	// ファイル読み込み
fwrite($file, $str."\r\n");
fclose($file);

?>
<html>
<head>
<meta charset="utf-8">
<title>POST（受信）</title>
</head>
<body>
お名前：<?php echo h($name)?>
EMAIL：<?php echo h($mail); ?>
<?php 
    if($flg == 0){ 
?>
    <button>登録</button>
<?php 
    } 
?>
<ul>
<li><a href="index.php">index.php</a></li>
</ul>
</body>
</html>