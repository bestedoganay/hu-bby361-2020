<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    // Güncelleme işlemi sorgusu
    $MakaleNo = mysqli_real_escape_string($baglanti, $_POST['MakaleNo']);
    $makaleAdi = mysqli_real_escape_string($baglanti, $_POST['makaleAdi']);
    $makaleDili = mysqli_real_escape_string($baglanti, $_POST['makaleDili']);
    $yazarno = mysqli_real_escape_string($baglanti, $_POST['yazarno']);
    $dergino= mysqli_real_escape_string($baglanti, $_POST['dergino']);
    $makaleTarih = mysqli_real_escape_string($baglanti, $_POST['makaleTarih']);
    $makaleUlke = mysqli_real_escape_string($baglanti, $_POST['makaleUlke']);
    $makaleAcik = mysqli_real_escape_string($baglanti, $_POST['makaleAcik']);
    $makaleDoi = mysqli_real_escape_string($baglanti, $_POST['makaleDoi']);
    $sorgu = "UPDATE makaleler SET makaleAdi = '$makaleAdi', makaleDili = '$makaleDili' , yazarno = '$yazarno', dergino = '$dergino', makaleTarih = '$makaleTarih', makaleUlke  = '$makaleUlke' , makaleAcik  = '$makaleAcik' ,makaleDoi= '$makaleDoi' WHERE MakaleNo = $MakaleNo";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Kayıt başarıyla güncellendi";
    } else {
        $islemSonuc = "Kayıt güncellenirken bir hata oluştu: " . mysqli_error($baglanti);
    }

    mysqli_close($baglanti);

?>
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="author" content="bestedoganay">
        <link href="stil.css" rel="stylesheet"> 
        <title>Makale Güncelle</title>
        <meta charset="utf-8"/>
    </head>
    
    <body>
        <div id="ust">
    
               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
        </div>
             
              
		
        <h1>Makale Güncelle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="makalelistele.php">Makale Listesine dön...</a></p>
    </body>
</html>
 
