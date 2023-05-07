<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Perfil</title>
	<link rel="stylesheet" href="${css}/profile.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
</head>
<body>
	<h1>Profile Page</h1>
	<div class="container">
		<img class="profile-img" src="https://picsum.photos/200" alt="Profile Picture">
		<div class="profile-details">
			<p><span>Nombre:</span> María Pérez</p>
			<p><span>Email:</span> mperez98@gmail.com</p>
			<p><span>Teléfono:</span> 67684569</p>
			<p><span>Fecha de Nacimiento:</span>20/04/1998</p>
			<p><span>Género:</span> No Binario</p>
			<p><span>País:</span> España</p>
			<p><span>Provincia:</span> Ávila</p>
		</div>
	</div>
</body>
</html>
