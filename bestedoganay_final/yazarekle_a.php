<html>
    <head>
        <title>MySQL-PHP Yazar Ekle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Yazar Ekle</h1>
        <form action="yazarekle_b.php" method="post">
            Yazar Adı: <input type="text" name="yazaradi"><br>
            Yazar Soyadı: <input type="text" name="yazarsoyadi"><br>
            Yazar URL: <input type="text" name="yazarURL"><br>
            <input type="submit" value="Yeni Kayıt Ekle">
        </form>
    </body>
</html>