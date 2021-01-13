<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM dergi");
?>
<html>
    <head>
        <title>Dergi Listesi</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">
               <a href="index.html">Ana Sayfa</a>
               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Dergi Listesi</h1>
        <p><a href="ekle_a.php">Yeni bir dergi ekle!</a></p>
        <?php
            echo("<table border=1 width=60%>");
                echo("<tr>");
                    echo("<td><b>Dergi ID</b></td>");
                    echo("<td><b>Dergi Adı</b></td>");
                    echo("<td><b>Dergi Ülke</b></td>");
                    echo("<td><b>Dergi URL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["dergino"]."</td>");
                echo("<td>".$satir["dergiadi"]."</td>");
                echo("<td>".$satir["dergiulke"]."</td>");
                echo("<td><a href=".$satir['dergiURL']."target='_blank'>".$satir["dergiURL"]."</a></td>");
                echo("<td><a href='guncelle_a.php?dergino=".$satir["dergino"]."'>Güncelle</a></td>");
                echo("<td><a href='sil.php?dergino=".$satir["dergino"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>
</html>