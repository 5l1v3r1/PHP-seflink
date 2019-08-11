<?php
include "header.php";
include "db.php";

$seflink=$_GET['seflink'];
$sorgu=$baglan->prepare("select * from makaleler where seflink=?");
$sorgu->execute(array($seflink));
$makale=$sorgu->fetch(PDO::FETCH_ASSOC);
 ?>

<div class="container">
    <div class="starter-template text-center">
        <h1><?=$makale['baslik'];?></h1>
        <p class="lead"><?=$makale['aciklama'];?></p>
    </div>
</div>

</body>
</html>