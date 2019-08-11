<?php
include "header.php";
include "db.php";

function seo($s) {

        $tr = array('ş','Ş','ı','I','İ','ğ','Ğ','ü','Ü','ö','Ö','Ç','ç','(',')','/',':',',','!','"',"#","$","%","&",'\'','*','+','.',';','<','>','=','?','@','[',']','^','`','{','}','|','~','_','’',"”",'‘'," ",'ä');
        $eng = array('s','s','i','i','i','g','g','u','u','o','o','c','c','','','-','-','','','','','','','','','','','','','','','','','','','','','','','','','','',"","","","-","");
        $s = str_replace($tr,$eng,$s);
        $s = strtolower($s);
        $s = preg_replace('/&amp;amp;amp;amp;amp;amp;amp;amp;amp;.+?;/', '', $s);
        $s = preg_replace('/\s+/', '-', $s);
        $s = preg_replace('|-+|', '-', $s);
        $s = preg_replace('/#/', '', $s);
        $s = str_replace('.', '', $s);
        $s = trim($s, '-');
        return $s;
    }

if ($_POST)
{
    if ($_POST['baslik']=="" || $_POST['aciklama']=="")
    {
        $uyari="Lütfen boş alanları doldurunuz";
    }
    else
    {
        $baslik=htmlspecialchars($_POST["baslik"]);
        $icerik=htmlspecialchars($_POST["aciklama"]);
        $seflink=seo($baslik);
        $sorgu=$baglan->prepare("insert into makaleler(baslik,aciklama,seflink) values(?,?,?)");
        $sorgu->execute(array($baslik,$icerik,$seflink));
        $hata=$sorgu->errorInfo();
        if(empty($hata[2]))
        {
            $uyari="Kayıt İşlemi Başarılı";
        }
        else
        {
            $uyari="Kayıt İşlemi Başarısız:<br>".$hata[2];
        }
    }
}
?>

<div class="container">
    <h1 class="text-center">Blog Yazısı Ekle</h1>

    <form method="post" action="">
        <div class="form-group">
            <label for="exampleFormControlInput1">Başlık</label>
            <input type="text" class="form-control" placeholder="Başlık" name="baslik">
        </div>

        <div class="form-group">
            <label >Açıklama</label>
            <textarea class="form-control" name="aciklama" rows="3"></textarea>
        </div>
        <div class="form-group text-right">
        <button type="submit" class="btn btn-primary btnkaydet">Kaydet</button>
        </div>

        <div class="form-group uyari">
            <?php if (isset($uyari)): ?>
                <div class="alert alert-info">
                    <strong> <?php echo $uyari; ?></strong>
                </div>
            <?php endif; ?>
        </div>
    </form>

</div>
</body>
</html>

<script>
    $(document).ready(function () {
        <?php
        if(isset($uyari) && $uyari=="Kayıt İşlemi Başarılı")
        {
                echo 'setTimeout(function () {$(".uyari").hide()}, 3000);';
        }
        ?>
    })
</script>