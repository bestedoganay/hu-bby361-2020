<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $dergiadi = mysqli_real_escape_string($baglanti, $_POST['dergiadi']);
    $dergiUlke = mysqli_real_escape_string($baglanti, $_POST['dergiulke']);
    $dergiURL = mysqli_real_escape_string($baglanti, $_POST['dergiURL']);
    
    $sorgu = "INSERT INTO dergi (dergiadi, dergiulke, dergiURL)
            VALUES ('$dergiadi', '$dergiUlke', '$dergiURL')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>MySQL-PHP Dergi Ekle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Dergi Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="ekle_a.php">Yeni bir dergi ekle!</a></p>
        <p><a href="listele.php">Anasayfaya dön...</a></p>
    </body>
</html>