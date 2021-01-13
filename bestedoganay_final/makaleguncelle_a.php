<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["MakaleNo"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM makaleler WHERE MakaleNo = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu);
    $sorgu1 = mysqli_query($baglanti, "SELECT *, CONCAT(yazaradi, ' ', yazarsoyadi) AS AdSoyad FROM yazar");
    $satir1= mysqli_fetch_assoc($sorgu1);
    $sorgu2 = mysqli_query($baglanti, "SELECT *, dergiadi FROM dergi");
    $satir2 = mysqli_fetch_assoc($sorgu2);
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

              
        <h1>Makale Güncelle</h1>
        <form action="makaleguncelle_b.php" method="post">
			<label for="ad">Makale Adı:</label><br/>
            <input type="text" value="<?php echo $satir["makaleAdi"] ;?>" name="makaleAdi" style="color:black "><br>
			<label for="ad"> Makale Dili:</label><br/>
            <input type="text" value="<?php echo $satir["makaleDili"] ;?>" name="makaleDili" style="color:black "><br>
			<label for="ad">Yazar Adı</label><br/>
            <select name="yazarno" style="color:black">
        <?php while($satir1 = mysqli_fetch_assoc($sorgu1)){ ?>
        <option style="color:black" value="<?php echo $satir1['yazarno']; ?>"><?php echo $satir1['AdSoyad']; ?></option>
        <?php } ?>
    </select> <br><br>
            <label for="ad">Dergi Adı</label><br/>
            <select name="dergino" style="color:black">
        <?php while($satir2 = mysqli_fetch_assoc($sorgu2)){ ?>
        <option style="color:black" value="<?php echo $satir2['dergino']; ?>"><?php echo $satir2['dergiadi']; ?></option>
        <?php } ?>
    </select> <br><br>
			<label for="ad">Makale Tarih:</label><br/>
            <input type="text" value="<?php echo $satir["makaleTarih"] ;?>" name="makaleTarih" style="color:black "><br>
			<label for="ad">Makale Ulke:</label><br/>
            <input type="text" value="<?php echo $satir["makaleUlke"] ;?>" name="makaleUlke" style="color:black "><br>
			<label for="ad">Makale Doi:</label><br/>
            <input type="text" value="<?php echo $satir["makaleAcik"] ;?>" name="makaleAcik" style="color:black "><br>
			<label for="ad">Makale Doi:</label><br/>
            <input type="text" value="<?php echo $satir["makaleDoi"] ;?>" name="makaleDoi" style="color:black "><br>
            <input type="hidden" value="<?php echo $satir["MakaleNo"] ;?>" name="MakaleNo">
            <input id="a" type="submit" value="Kaydı Güncelle" style="color:black ">
        </form>
    </body>

</html>