<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $yazarno = mysqli_real_escape_string($baglanti, $_POST['yazarno']);
    $yazaradi = mysqli_real_escape_string($baglanti, $_POST['yazaradi']);
    $yazarsoyadi = mysqli_real_escape_string($baglanti, $_POST['yazarsoyadi']);
    $yazarURL = mysqli_real_escape_string($baglanti, $_POST['yazarURL']);
    $sorgu = "UPDATE yazar SET yazaradi = '$yazaradi', yazarsoyadi = '$yazarsoyadi', yazarURL = '$yazarURL' WHERE yazarno = $yazarno";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

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
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="yazarlistele.php">Anasayfaya dön...</a></p>
    </body>
</html>