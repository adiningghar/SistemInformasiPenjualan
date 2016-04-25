<?php   
session_start();
$email=$_POST['email'];
$pass=sha1($_POST['pass']);
include"koneksi/koneksi.php";

$query="SELECT * FROM member WHERE email='$email' and password='$pass'";
$result=mysql_query($query);
$row=mysql_num_rows($result);
if(!$row)
{
	?>
		<script language="javascript">
			alert("Maaf, Email Dan Password Anda salah!!");
			document.location="index.php";
		</script>
	<?php 
}else
{

	$rs=mysql_fetch_array($result);
	$user=$rs['email'];
	$_SESSION['idmember']=$user;
	$_SESSION['member']=md5($_SESSION['idmember']);
	?>
	<script>
	alert('LOGIN SUKSES!!');
	window.location="beranda_member.php";
	</script>
    <?php
}
?>