<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT *, M.makaleAdi, CONCAT(Y.yazaradi,' ', Y.yazarsoyadi) AS AdSoyad, DA.dergiadi
            FROM makaleler M, yazar Y, dergi DA 
            WHERE M.dergino = DA.dergino AND 
            M.yazarno = Y.yazarno 
		");
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
        
        <h1>Makale Listesi</h1>
        <p><a href="makaleekle.php">Yeni bir makale ekle!</a></p>
        <?php
            echo("<table border=1 width=60%>");
                echo("<tr>");
                    echo("<td><b>Makale Adı</b></td>");
		            echo("<td><b>Makale Dili</b></td>");
                    echo("<td><b>Makale Tarih</b></td>");
                    echo("<td><b>Makale Ülke</b></td>");
                    echo("<td><b>Makale Açıklama</b></td>");
		            echo("<td><b>Makale DOİ</b></td>");
		            echo("<td><b>Makale No</b></td>");
		            echo("<td><b>Makale Kayıt No</b></td>");
                    echo("<td><b>Makale Yazarı</b></td>");
                    echo("<td><b>Dergi Adı</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["makaleAdi"]."</td>");
                echo("<td>".$satir["makaleDili"]."</td>");
				echo("<td>".$satir["makaleTarih"]."</td>");
                echo("<td>".$satir["makaleUlke"]."</td>");
                echo("<td>".$satir["makaleAcik"]."</td>");
				echo("<td>".$satir["makaleDoi"]."</td>");
                echo("<td>".$satir["MakaleNo"]."</td>");
				echo("<td>".$satir["makalekayitno"]."</td>");
				echo("<td>".$satir["AdSoyad"]."</td>");
				echo("<td>".$satir["dergiadi"]."</td>");
                echo("<td><a href='makaleguncelle_a.php?MakaleNo=".$satir["MakaleNo"]."'>Güncelle</a></td>");
                echo("<td><a href='makalesil.php?MakaleNo=".$satir["MakaleNo"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>

</html>