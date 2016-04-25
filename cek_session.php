<?php  
session_start();

if(!isset($_SESSION['member']) || ($_SESSION['member']!=md5($_SESSION['idmember'])) )
{
	?><script language="javascript">
	alert("Maaf, Anda tidak berhak mengakses halaman ini!!");
	document.location="index.php";
	</script>
	<?php 
}
?>