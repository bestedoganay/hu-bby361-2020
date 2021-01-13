<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Silme işlemi sorgusu */
    $silinecek = mysqli_real_escape_string($baglanti, $_GET["MakaleNo"]);
    $sorgu = "DELETE FROM makaleler WHERE MakaleNo = '$silinecek'";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla silindi";
    } else {
        $islemSonuc = "Kayıt silinirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="author" content="bestedoganay">
    <link href="stil.css" rel="stylesheet"> 
  
 
	
</head>
    
    <body>
        <div id="ust">
               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
            
        </div>    
              
       <h1>Makale Sil</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="makalelistele.php">Makale listesine dön...</a></p>

    </body>

</html>