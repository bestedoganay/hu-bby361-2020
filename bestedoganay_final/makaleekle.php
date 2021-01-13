<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT *, CONCAT(yazaradi, ' ', yazarsoyadi) AS AdSoyad FROM yazar");
    $sorgu1 = mysqli_query($baglanti, "SELECT *, dergiadi FROM dergi");

   
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
          <form action="makaleekle_a.php" method="post">
            <label for="ad">Makale Adı:</label><br/>
            <input type="text" name="makaleAdi" style="color:black"><br>
            <label for="ad">Makale Dili:</label><br/>
            <input type="text" name="makaleDili" style="color:black"><br>
            <label for="ad">Makale Tarih:</label><br/>
            <input type="text" name="makaleTarih" style="color:black"><br>
			<label for="ad">Makale Ülke:</label><br/>
            <input type="text" name="makaleUlke" style="color:black"><br>
			<label for="ad">Makale Açıklama:</label><br/>
            <input type="text" name="makaleAcik" style="color:black"><br>
			<label for="ad">Makale Doi:</label><br/>
            <input type="text" name="makaleDoi" style="color:black"><br> 		
			<label for="ad">Yazar Adı</label><br/>
            <select name="yazarno" style="color:black">
        <?php while($satir = mysqli_fetch_assoc($sorgu)){ ?>
        <option style="color:black" value="<?php echo $satir['yazarno']; ?>"><?php echo $satir['AdSoyad']; ?></option>
        <?php } ?>
    </select> <br>
            <label for="ad">Dergi</label><br/>
            <select name="dergino" style="color:black">
        <?php while($satir = mysqli_fetch_assoc($sorgu1)){ ?>
        <option style="color:black" value="<?php echo $satir['dergino']; ?>"><?php echo $satir['dergiadi']; ?></option>
        <?php } ?>
    </select> <br>		
    <input id="a" type="submit" value="Yeni Makale Ekle" style="color:black"><br><br><br><br>
    
           </form>
		
    </body>

</html>