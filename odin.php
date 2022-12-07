<?php  
include_once "bd.php";
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">  
		<title>Гостевая книга</title>
		<link rel="stylesheet" href="css/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<div id="wrapper">
			<h1>Гостевая книга</h1>
			<div class="note">
				
			<div class="note">	
				<p>
				<?php 
				  include_once 'bd.php';
				  $query = $pdo->prepare("SELECT * FROM users");
				  $query->execute();
				  $row = $query->fetchAll();
				  foreach ($row as $item) {
					  echo "<br><span class='date'>{$item['data']}ᅠ ᅠ</span>";
					  echo "<span class='name'>{$item['name']}</span><br>";
					  echo "<span>{$item['text']}</span><br>";
				  }
				  ?>
				</p>
			</div>	
			
			<div id="form">
				<form action="cel.php" method="POST">
					<p><input class="form-control" placeholder="Ваше имя" name="name"></p>
					<p><textarea class="form-control" placeholder="Ваш отзыв" name="text"></textarea></p>
					<p><input type="submit" class="btn btn-info btn-block" value="Сохранить"></p>
				</form>
				<div class="info alert alert-info">
				<span class="error"><?php echo $_SESSION['message'] ?></span>
			</div>
			</div>
		</div>
	</body>
</html>

