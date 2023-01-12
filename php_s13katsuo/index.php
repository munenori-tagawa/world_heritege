<?php

date_default_timezone_set('Asia/Tokyo');
function funcWeek(){
    return array('日', '月', '火', '水', '木', '金', '土');
}
$w = funcWeek()[date("w")];

echo '現在の日時<br>';
echo date("Y/m/d($w) G:i:s");

?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>world-heritage</title>
    <link href="range.css" rel="stylesheet">
    <style>
        div {
            background-color: blue;
            color: white;
            padding: 20px;
            font-size: 24px;
        }

        .navbar-brand{
            color:white;
        }

        .jumbotron{
            height: 500px;
        }
    </style>
</head>
<body>
    <!-- Head[Start] -->
    <header>
    <header>
        <nav class="navbar navbar-default">
          <!-- <div class="button_solid012">
            <a href="#">ボタンのデザイン<i class="fas fa-angle-
            right fa-position-right"></i></a>
          </div> -->
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="login.php">ログイン</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="logout.php">ログアウト</a></div>
            </div>
        </nav>
    </header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php" color: white; >覚えてますよ！</a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->
    <!-- Main[Start] -->
    <form method="post" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>world-heritage</legend>
                <label>国名：<input type="text" name="countryname"></label><br>
                <label>名称：<input type="text" name="name"></label><br>
                <label>緯度：<input type="text" name="latitude"></label><br>
                <label>経度：<input type="text" name="longitude"></label><br>
                <label>登録年：<input type="text" name="years"></label><br>
                <label>説明：<textArea name="comment" rows="4" cols="40"></textArea></label><br>
                <input type="submit" value="飛べ！">


            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->
</body>
</html>



<!-- <!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
     Head[Start] -->
    <!-- <header> -->
        <!-- <nav class="navbar navbar-default"> -->
            <!-- <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="login.php">ログイン</a></div>
                <div class="navbar-header"><a class="navbar-brand" href="logout.php">ログアウト</a></div>
            </div>
        </nav>
    </header> -->
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <!-- <form method="POST" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>フリーアンケート</legend>
                <label>名前：<input type="text" name="name"></label><br>
                <label>Email：<input type="text" name="email"></label><br>
                <label>年齢：<input type="text" name="age"></label><br>
                <label><textArea name="comment" rows="4" cols="40"></textArea></label><br>
                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form> -->
    <!-- Main[End] -->
<!-- </body>

</html> -->
