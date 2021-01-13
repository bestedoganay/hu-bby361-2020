<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yazar");
?>
<html>
    <head>
        <title>Yazar Listesi</title>
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
        
        <h1>Yazar Listesi</h1>
        <p><a href="yazarekle_a.php">Yeni bir yazar ekle!</a></p>
        <?php
            echo("<table border=1 width=60%>");
                echo("<tr>");
                    echo("<td><b>Yazar No</b></td>");
                    echo("<td><b>Yazar Kayıt No</b></td>");
                    echo("<td><b>Yazar Adı</b></td>");
                    echo("<td><b>Yazar Soyadı</b></td>");  
                    echo("<td><b>Yazar URL</b></td>");
                    echo("<td><b>Güncelle</b></td>");
                    echo("<td><b>Sil</b></td>");
                echo("</tr>");
            /* Sorgu sonuçlarının yazdırılması */
            while($satir = mysqli_fetch_assoc($sorgu)){
                echo("<tr>");
                echo("<td>".$satir["yazarno"]."</td>");
                echo("<td>".$satir["yazarkayitno"]."</td>");
                echo("<td>".$satir["yazaradi"]."</td>");
                echo("<td>".$satir["yazarsoyadi"]."</td>");
                echo("<td><a href=".$satir['yazarURL']."target='_blank'>".$satir["yazarURL"]."</a></td>");
                echo("<td><a href='yazarguncelle_a.php?yazarno=".$satir["yazarno"]."'>Güncelle</a></td>");
                echo("<td><a href='yazarsil.php?yazarno=".$satir["yazarno"]."'>Sil</a></td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </body>
</html>