<html>
    <head>
        <title>MySQL-PHP Dergi Ekle</title>
        <meta charset="utf-8"/>
        <link href="stil.css" rel="stylesheet">
    </head>
    
    <body>
        <div id="ust">

               <a  href="makalelistele.php" >Makale İşlemleri</a>
               <a  href="yazarlistele.php" >Yazar İşlemleri</a>
               <a  href="listele.php" >Dergi İşlemleri</a> 
             
        </div>
        
        <h1>Dergi Ekle</h1>
        <form action="ekle_b.php" method="post">
            Dergi Adı: <input type="text" name="dergiadi"><br>
            Dergi Ülke: <input type="text" name="dergiulke"><br>
            Dergi URL: <input type="text" name="dergiURL"><br>
            <input type="submit" value="Yeni Kayıt Ekle">
        </form>
    </body>
</html>