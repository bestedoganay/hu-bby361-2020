<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Silme işlemi sorgusu */
    $silinecek = mysqli_real_escape_string($baglanti, $_GET["yazarno"]);
    $sorgu = "DELETE FROM yazar WHERE yazarno = '$silinecek'";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla silindi";
    } else {
        $islemSonuc = "Kayıt silinirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
        <title>Yazar Sil</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Yazar Sil</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="yazarlistele.php">Anasayfaya dön...</a></p>
    </body>
</html>