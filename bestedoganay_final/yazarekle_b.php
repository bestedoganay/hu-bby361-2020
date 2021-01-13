<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $yazaradi = mysqli_real_escape_string($baglanti, $_POST['yazaradi']);
    $yazarsoyadi = mysqli_real_escape_string($baglanti, $_POST['yazarsoyadi']);
    $yazarURL = mysqli_real_escape_string($baglanti, $_POST['yazarURL']);
    
    $sorgu = "INSERT INTO yazar (yazaradi, yazarsoyadi, yazarURL)
            VALUES ('$yazaradi', '$yazarsoyadi', '$yazarURL')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>MySQL-PHP Yazar Ekle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Yazar Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="yazarekle_a.php">Yeni bir yazar ekle!</a></p>
        <p><a href="yazarlistele.php">Anasayfaya dön...</a></p>
    </body>
</html>