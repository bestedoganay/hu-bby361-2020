<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["yazarno"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazar WHERE yazarno = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu);
?>

<html>
    <head>
        <title>Yazar Güncelle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Yazar Güncelle</h1>
        <form action="yazarguncelle_b.php" method="post">
            Yazar Adı: <input type="text" value="<?php echo $satir["yazaradi"] ;?>" name="yazaradi"><br>
            Yazar Soyadı: <input type="text" value="<?php echo $satir["yazarsoyadi"] ;?>" name="yazarsoyadi"><br>
            Yazar URL: <input type="text" value="<?php echo $satir["yazarURL"] ;?>" name="yazarURL"><br>
            <input type="hidden" value="<?php echo $satir["yazarno"] ;?>" name="yazarno">
            <input type="submit" value="Kaydı Güncelle">
        </form>
    </body>
</html>