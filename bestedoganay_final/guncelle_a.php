<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["dergino"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM dergi WHERE dergino = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu)
?>

<html>
    <head>
        <title>Dergi Güncelle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Dergi Güncelle</h1>
        <form action="guncelle_b.php" method="post">
            Dergi Adı: <input type="text" value="<?php echo $satir["dergiadi"] ;?>" name="dergiadi"><br>
            Dergi Ülke : <input type="text" value="<?php echo $satir["dergiulke"] ;?>" name="dergiulke"><br>
            Dergi URL: <input type="text" value="<?php echo $satir["dergiURL"] ;?>" name="dergiURL"><br>
            <input type="hidden" value="<?php echo $satir["dergino"] ;?>" name="dergino">
            <input type="submit" value="Kaydı Güncelle">
        </form>
    </body>
</html>