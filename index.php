<?php
session_start();
include "koneksi/koneksi.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Len's Accessories</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="flexslider.css" type="text/css" />
<link rel="shortcut icon" href="images/favicon.png" type="image/png"/>
<script type="text/javascript"  src="js/jquery-1.8.2.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/selectnav.js"></script>
	<script type="text/javascript"  src="js/jquery.flexslider.js"></script><script type="text/javascript">
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation: "slide"
		});
	});
	</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/jquery.colorbox.js"></script>
<script type="text/javascript">
// validates that the field value string has one or more characters in it
function isNotEmpty(elem) {
  var str = elem.value;
    var re = /.+/;
    if(!str.match(re)) {
        alert("Tesk Box Harap di isi.");
        setTimeout("focusElement('" + elem.form.name + "', '" + elem.name + "')", 0);
        return false;
    } else {
        return true;
    }
}
//validates that the entry is a positive or negative number
function isNumber(elem) {
  var str = elem.value;
    var re = /^[-]?\d*\.?\d*$/;
    str = str.toString();
    if (!str.match(re)) {
        alert("Enter only numbers into the field.");
        setTimeout("focusElement('" + elem.form.name + "', '" + elem.name + "')", 0);
        return false;
    }
    return true;
}
// validates that the entry is 16 characters long
function isLen16(elem) {
  var str = elem.value;
    var re = /\b.{16}\b/;
    if (!str.match(re)) {
        alert("Entry does not contain the required 16 characters.");
        setTimeout("focusElement('" + elem.form.name + "', '" + elem.name + "')", 0);
        return false;
    } else {
        return true;
    }
}
// validates that the entry is formatted as an e-mail address
function isEMailAddr(elem) {
  var str = elem.value;
    var re = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/;
    if (!str.match(re)) {
        alert("Penulisan alamat e-mail salah.");
        setTimeout("focusElement('" + elem.form.name + "', '" + elem.name + "')", 0);
        return false;
    } else {
        return true;
    }
}
// validate that the user made a selection other than default
function isChosen(select) {
    if (select.selectedIndex == 0) {
        alert("Please make a choice from the list.");
        return false;
    } else {
        return true;
    }
}

// validate that the user has checked one of the radio buttons
function isValidRadio(radio) {
    var valid = false;
    for (var i = 0; i < radio.length; i++) {
        if (radio[i].checked) {
            return true;
        }
    }
    alert("Make a choice from the radio buttons.");
    return false;
}

function focusElement(formName, elemName) {
    var elem = document.forms[formName].elements[elemName];
    elem.focus();
    elem.select();
}

// batch validation router
function validateForm(form) {
    if (isNotEmpty(form.nama)) {
            if (isNotEmpty(form.email)) {
                if (isEMailAddr(form.email)) {
					if (isNotEmpty(form.pass)) {
						if (isNotEmpty(form.konf_pass)) {
									if (isNotEmpty(form.alamat)) {
                    					if (isNotEmpty(form.telp)) {
                            					return true;
										}
									}
                        }
                    }
                }
            }
    }
    return false;
}
function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}
</script>
</head>

<body>
<div id="outer-top">
<!--<div id="login"><form action="cek_login.php" method="post"><a href="?page=daftar" class="ahref"><strong>Daftar</strong> </a>&nbsp;| </strong> <strong>Email <input name="email" placeholder="" type="text" size="30" />
  &nbsp;&nbsp;&nbsp;&nbsp;Kata Sandi 
  <input name="pass" type="password" placeholder="" />&nbsp;&nbsp;<input type="submit" value="Submit" /> 
  
</form>
</div>-->
<div class="clear"></div>
  <div id="header"><!--<img src="images/logoatas.png" width="1000" height="150" />--></div>
<div class="clear"></div>
<div id="menu">
	<ul> 
    	<li><a href="index.php">Beranda</a></li>
        <li><a href="?page=produk">All Product</a>
        <ul> 
        <?php
			$sKat=mysql_query("select * from kategori_produk order by nama_kategori asc");
			while($dtKat=mysql_fetch_array($sKat)){
		?>
        <!--<li><a href="?page=produk&idk=<?php echo sha1($dtKat['id_kategori']);?>"><?php echo $dtKat['nama_kategori'];?></a></li>-->
        <?php } ?>
        </ul>
        </li> 
		<li><a href="index.php?page=produk&idk=4d134bc072212ace2df385dae143139da74ec0ef">Anting</a></li>
        <li><a href="index.php?page=produk&idk=12c6fc06c99a462375eeb3f43dfd832b08ca9e17">Belt</a></li>
		<li><a href="index.php?page=produk&idk=d435a6cdd786300dff204ee7c2ef942d3e9034e2">Cincin</a></li>
        <li><a href="index.php?page=produk&idk=472b07b9fcf2c2451e8781e944bf5f77cd8457c8">Gelang</a></li>
		<li><a href="index.php?page=produk&idk=f6e1126cedebf23e1463aee73f9df08783640400">Jam Tangan</a></li>
		<li><a href="index.php?page=produk&idk=91032ad7bbcb6cf72875e8e8207dcfba80173f7c">Kalung</a></li>	
        <li><a href="?page=buku_tamu">Buku Tamu</a></li>
    </ul>
</div>
</div>
<div class="clear"></div>
<div id="outer-content">
  <div id="content">
    	<div id="bilah-kiri">
        <table width="100%" border="0" style="border:solid 1px #eee;">
  			<tr>
    			<td background="images/detail.jpg" style="color:#FFF;" class="tdat"><h3>Category Product</h3></td>
  			</tr>
            <?php
			$sKat=mysql_query("select * from kategori_produk order by nama_kategori asc");
			while($dtKat=mysql_fetch_array($sKat)){
		?>
  			<tr>
    			<td><a href="?page=produk&idk=<?php echo sha1($dtKat['id_kategori']);?>" class="ahref"><strong><?php echo $dtKat['nama_kategori'];?></strong></a></td>
  			</tr>
            <?php } ?>
		</table>
        <br />
        <table width="100%" border="0" style="border: solid 1px #eee; color: #FF679A; font-size: 12px;">
  			<tr>
    			<td background="images/detail.jpg" style="color:#FFF;" class="tdat"><h3>Login</h3></td>
  			</tr>
  			<tr>
    			<td align="right"><form action="cek_login.php" method="post">Email&nbsp;&nbsp;<br /><input name="email" placeholder="" type="text" size="25" /></td>
  			</tr>
            <tr>
    			<td align="right">Kata Sandi&nbsp;&nbsp;<br /><input name="pass" type="password" size="25" placeholder="" />
                <br /><br /><a href="?page=daftar" class="ahref"><strong>Daftar</strong></a>&nbsp;| <input type="submit" value="Submit" /> 
  </form>
</td>
  			</tr>
		</table>
        <br />
        <!--<table width="100%" border="0" style="border:solid 1px #eee;">
  			<tr>
    		<td bgcolor="#940101" style="color:#FFF;" class="tdat"><h3>Information</h3></td>
  			</tr>
            <?php
			$qIn=mysql_query("select * from informasi order by judul asc");
			while($dtIn=mysql_fetch_array($qIn)){
			?>
  			<tr>
    			<td><a href="?page=lihat_informasi&id=<?php echo sha1($dtIn['id_informasi']);?>" class="ahref"><strong><?php echo $dtIn['judul'];?></strong></a></td>
  			</tr>
            <?php } ?>
		</table>
        <br />-->
        <table width="100%" border="0" style="border:solid 1px #eee;">
  			<tr>
    			<td background="images/detail.jpg" style="color:#FFF;" class="tdat"><h3>Online Support</h3></td>
  			</tr>
  			<tr>
    			<td align="center"><strong><h2>Admin 1</h2></strong></td>
  			</tr>
  			<tr>
  			  <td align="center"><a href="ymsgr:SendIM?YahooUser25">
<img src="http://opi.yahoo.com/online?u=YahooUser25&amp;m=g&amp;t=14" width="103" height="79" border="0"></a></td>
		  </tr>
  			<!--<tr>
  			  <td>&nbsp;</td>
		  </tr>
  			<tr>
    			<td align="center"><strong><h2>Admin 2</h2></strong></td>
		  </tr>
          <tr>
  			  <td align="center"><a href="ymsgr:SendIM?YahooUser25">
<img src="http://opi.yahoo.com/online?u=YahooUser25&amp;m=g&amp;t=14" width="103" height="79" border="0"></a></td>
		  </tr>-->
  			
		</table>
        <br />
        <div class="table-scrool">
        <table width="100%" border="0" style="border:solid 1px #eee;">
  			<tr>
    			<td background="images/detail.jpg" style="color:#FFF;" class="tdat"><h3>Testimoni Member</h3></td>
  			</tr>
            <?php
			$qTes=mysql_query("select * from testimoni order by tanggal desc");
			while($dTes=mysql_fetch_array($qTes)){
			?>
  			<tr>
    			<td align="right" style="font-size:10px;"><strong><em><?php echo $dTes['nama'];?>, <?php echo $dTes['tanggal'];?></em><br /></strong><?php echo $dTes['komentar'];?><hr /></td>
		  </tr>
            <?php } ?>
		</table>
        </div>
        <br />
        <table width="100%" border="0" style="border:solid 1px #eee;">
  			<tr>
    			<td background="images/detail.jpg" style="color:#FFF;" class="tdat"><h3>Informasi Rekening</h3></td>
  			</tr>
  			<tr>
    			<td align="center"><img src="images/b.png" width="150" height="50" /></td>
  			</tr>
  			<tr>
  			  <td align="center"><strong>4212774158<br />Fuad Nur Hasan</strong></td>
		  </tr>
  			<tr>
  			  <td>&nbsp;</td>
		  </tr>
  			<tr>
  			  <td align="center"><img src="images/c.png" width="150" height="50" /></td>
		  </tr>
  			<tr>
  			  <td align="center"><strong>9000015084305<br />Fuad Nur Hasan</strong></td>
		  </tr>
  			<tr>
  			  <td>&nbsp;</td>
		  </tr>
  			<tr>
  			  <td align="center"><img src="images/a.png" width="150" height="50" /></td>
		  </tr>
  			<tr>
  			  <td align="center"><strong>051101022818505<br />Fuad Nur Hasan</strong></td>
		  </tr>
		</table>
        <br />
        <!--<table width="100" border="0" style="border:solid 1px #eee;">
  			<tr>
    			<td bgcolor="#940101" style="color:#FFF;" class="tdat"><h3>Kontak Kami</h3></td>
  			</tr>
  			<tr>
    			<td><img src="images/AddressIcon.png"/></td>
  			</tr>
  			<tr>
  			  <td>Jalan Asri 7B Blok D3 No. 11 Perum Dephan Pondok Rajeg, Cibinong, Bogor</td>
		  </tr>
  			<tr>
  			  <td><img src="images/images.png"/></td>
		  </tr>
  			<tr>
  			  <td>081328537822</td>
		  </tr>
  			<tr>
  			  <td><img src="images/email-logo.jpg"/></td>
		  </tr>
  			<tr>
  			  <td>&nbsp;adi.ningghar26@gmail.com</td>
		  </tr>
		</table>-->
        <br />
        <div class="clear"></div>
        </div>
        
        <div id="content-isi">
        <?php 
		error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
	  		$page=mysql_real_escape_string(htmlentities($_GET['page']));
	  		$file='module/'.$page.'.php';
	  
	  		if(!file_exists($file) || empty($page))
	  		{
		  		include 'module/beranda.php';
	  		}
	  		else
	  		{
		  		include 'module/'.$page.'.php';
	  		}
	  ?>
      
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>
<div id="outer-footer">
<div id="footer">
<div id="menu">
	<!--<ul> 
    	<li><a href="index.php">Beranda</a></li> 
		<li><a href="index.php?page=lihat_informasi&id=1b6453892473a467d07372d45eb05abc2031647a">Tentang Kami</a></li>        
        <li><a href="index.php?page=lihat_informasi&id=77de68daecd823babbb58edb1c8e14d7106e83bb">Konfirmasi Pembayaran</a></li>        
        <li><a href="index.php?page=lihat_informasi&id=da4b9237bacccdf19c0760cab7aec4a8359010b0">Cara Pembayaran</a></li>        <li><a href="index.php?page=lihat_informasi&id=356a192b7913b04c54574d18c28d46e6395428ab">Cara Belanja</a></li>
    </ul>-->
</div>
    <p align="left">&copy;Copyright 2015 Len's Accessories - All Rights Reserved
	<img src="images/support.png" width="361" height="30" style="float:right; margin-top:0px;" /></p>
	</div>
		</div>
</body>
</html>