<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $dergino = mysqli_real_escape_string($baglanti, $_POST['dergino']);
    $dergiadi = mysqli_real_escape_string($baglanti, $_POST['dergiadi']);
    $dergiUlke = mysqli_real_escape_string($baglanti, $_POST['dergiulke']);
    $dergiURL = mysqli_real_escape_string($baglanti, $_POST['dergiURL']);
    $sorgu = "UPDATE dergi SET dergiadi = '$dergiadi', dergiulke = '$dergiulke', dergiURL = '$dergiURL' WHERE dergino = $dergino";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

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
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="listele.php">Anasayfaya dön...</a></p>
    </body>
</html>