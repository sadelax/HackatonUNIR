<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Malvaloca Rural</title>
  <link rel="stylesheet" href="index.css">
  <link href="${css}/index.css" type="text/css" rel="stylesheet">
</head>
<body>
  <header>
    <div class="grid">
      <img src="logo.png" alt="Malvaloca Rural">
    </div>
    <nav>
      <ul>
        <li><a href="#">Pide Ayuda Ahora</a></li>
        <li><a href="#">Nuestro Impacto</a></li>
        <li><a href="#">Maneras de Aportar</a></li>
        <li><a href="#">Programas y Servicios</a></li>
      </ul>
    </nav>
    <div class="cta">
      <a href="#">Dona</a>
    </div >
  </header>
  <main class='grid-container'>
    <div class="grid-item1">
      <h1>Tus Zonas Seguras</h1>
      <div class="google-map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7093.456093462131!2d-4.597567330675018!3d40.99481351498675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683398774266!5m2!1ses!2ses" width="300" height="340" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
    </div>
    <div class="grid-item2">
      <h1>Descubre en nuestro blog</h1>
      <p>Muchas publicaciones aquí...</p>
      <a href="#">Saber más</a>
    </div>
    <div class="grid-item3">
      <h1>Conecta en el foro</h1>
      <p>Tu apoyo nos ayuda a salvar vidas. Dona hoy.</p>
      <a href="#">Dona Ahora</a>
    </div>
    <div class="grid-item4">
      <h1>Próximos Eventos</h1>
      <p>Ofrecemos una serie de programas y servicios para apoyar a la juventud LGBTQ+</p>
      <a href="#">Saber más</a>
    </div>
  </main>
  <footer>
    <ul>
      <li><a href="#">Contáctanos</a></li>
      <li><a href="#">Política de Privacidad</a></li>
      <li><a href="#">Términos de Uso</a></li>
      <li><a href="#">Mapa</a></li>
    </ul>
  </footer>

  <script src="${js}/js/index.js"></script>
</body>
</html>