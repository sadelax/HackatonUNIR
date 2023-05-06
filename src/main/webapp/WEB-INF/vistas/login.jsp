<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Inicio de sesión</title>
  <link rel="stylesheet" href="${css}/login.css">
  <script src="${js}/login.js"></script>
</head>
<body>
  <div class="login-page">
    <div class="login-title">
      <h1>¡Siempre eres bienvenido aqui!</h1>
      <p>Por favor registrate para continuar.</p>
    </div>
    <form class="login-form">
      <h2>Inicio de sesión</h2>
      <a href="${home}/registro">¿No tienes cuenta aún? ¡Registrate!</a>
      <label for="username">Usuario o Email</label>
      <input type="text" id="username" name="username" required>
      <label for="password">Contraseña</label>
      <input type="password" id="password" name="password" required>
      <div class="remember-me">
        <input type="checkbox" id="remember-me" name="remember-me">
        <label for="remember-me">Guardar datos de inicio de sesión</label>
      </div>
      <button type="submit">Inicia sesión</button>
    </form>
  </div>
</body>
</html>

