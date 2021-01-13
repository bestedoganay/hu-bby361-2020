<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");

    /* Ekleme işlemi sorgusu */
    $makaleAdi = mysqli_real_escape_string($baglanti, $_POST['makaleAdi']);
    $makaleDili = mysqli_real_escape_string($baglanti, $_POST['makaleDili']);
    $makaleTarih= mysqli_real_escape_string($baglanti, $_POST['makaleTarih']);
    $makaleUlke = mysqli_real_escape_string($baglanti, $_POST['makaleUlke']);
    $makaleAcik = mysqli_real_escape_string($baglanti, $_POST['makaleAcik']);
    $makaleDoi= mysqli_real_escape_string($baglanti, $_POST['makaleDoi']);
    $yazarno = mysqli_real_escape_string($baglanti, $_POST['yazarno']);
    $dergino= mysqli_real_escape_string($baglanti, $_POST['dergino']);
    $sorgu = "INSERT INTO makaleler (makaleAdi, makaleDili, makaleTarih, makaleUlke,makaleAcik, makaleDoi, yazarno, dergino)
            VALUES ('$makaleAdi', '$makaleDili', '$makaleTarih', '$makaleUlke','$makaleAcik','$makaleDoi', '$yazarno', '$dergino')";

    if (mysqli_query($baglanti, $sorgu)) {
        $islemSonuc = "Yeni kayıt Başarıyla Oluşturuldu.";
    } else {
        $islemSonuc = "Hata: " . $sorgu . "<br>" . mysqli_error($baglanti);
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
              
        
      <h1>Makale Ekle</h1>
        <h2><?php echo $islemSonuc; ?></h2>
        <p><a href="makaleekle.php">Yeni Bir Makale ekle!</a></p>
        <p><a href="makalelistele.php">Makale Listesine dön...</a></p>

    </body>

</html>