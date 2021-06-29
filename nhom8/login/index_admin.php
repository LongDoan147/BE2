<?php
require "../load.php";

if (isset($_POST['RegisterUsername'])) {
	$check = 0;
	foreach ($user->getAll() as $value) {
		if ($value['power'] == "user") {
			if ($value['name'] == $_POST['RegisterUsername']) {
				$check = 1 ?>
				<script>
					alert("Lưu ý: Không tạo được");
				</script>
<?php }
		}
	}
	if ($check = 0) {
		$user->add($_POST['RegisterUsername'], $_POST['RegisterPassword']);
	}
}
?>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Clean Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />

	<!-- css files -->
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- /css files -->

	<!-- online fonts -->
	<link href="//fonts.googleapis.com/css?family=Sirin+Stencil" rel="stylesheet">
	<!-- online fonts -->

<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<h1>Login Form</h1>
				<div class="main-agileits">
					<!--form-stars-here-->
					<div class="form-w3-agile">
						<h2>Login Admin</h2>
						<form action="../admin/index.php" method="post">
							<div class="form-sub-w3">
								<input type="text" name="Username" placeholder="Username " required="" />
								<div class="icon-w3">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
							</div>
							<div class="form-sub-w3">
								<input type="password" name="Password" placeholder="Password" required="" />
								<div class="icon-w3">
									<i class="fa fa-unlock-alt" aria-hidden="true"></i>
								</div>
							</div>
							<p class="p-bottom-w3ls1">New User?<a class href="register.php"> Register here</a></p>
							<div class="clear"></div>
							<div class="submit-w3l">
								<input type="submit" value="Login">
							</div>
						</form>
						<div class="social w3layouts">
							<div class="heading">
								<h5>Or Login with</h5>
								<div class="clear"></div>
							</div>
							<div class="icons">
								<i class="fa fa-facebook" aria-hidden="true"></i>
								<i class="fa fa-twitter" aria-hidden="true"></i>
								<i class="fa fa-pinterest-p" aria-hidden="true"></i>
								<i class="fa fa-linkedin" aria-hidden="true"></i>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!--//form-ends-here-->
				</div><!-- copyright -->
				<div class="copyright w3-agile">
					<p> © Login Form </p>
				</div>
				<!-- //copyright -->
			</div>
		</div>
	</div>

</body>

</html>