<?php
include("db.php");
include "header.php";
$makaleler=$baglan->prepare("select * from makaleler");
$makaleler->execute();
$makaleler= $makaleler->fetchAll(PDO::FETCH_ASSOC);
?>

<div class="container">
    <h1 class="text-center m-3">Blog Yazıları</h1>
    <div class="list-group">
        <?php foreach ($makaleler as $makale):?>
            <a href="<?=$makale["seflink"];?>" class="list-group-item"><?php echo $makale["baslik"]; ?></a>
        <?php endforeach; ?>
    </div>
</div>
</body>
</html>