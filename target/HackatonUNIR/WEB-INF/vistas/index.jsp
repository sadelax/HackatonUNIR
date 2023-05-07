<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Malvaloca</title>
  <link rel="stylesheet" href="${css}/index.css">
  <link href="./resources/css/index.css" type="text/css" rel="stylesheet">
</head>
<body>
  <header>
    <div class="logo">
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
    </div>
  </header>
  <main>
    <section class="pide-ayuda-ahora">
      <h1>Pide Ayuda Ahora</h1>
      <p>Si estás pensando en el suicidio no estás solo. Estamos aquí para ayudar.</p>
      <a href="#">Llama, chatea o mándanos un correo</a>
    </section>
    <section class="nuestro-impacto">
      <h1>Nuestro Impacto</h1>
      <p>Más que una web, un movimiento.</p>
      <a href="#">Saber más</a>
    </section>
    <section class="maneras-de-aportar">
      <h1>Maneras de Aportar</h1>
      <p>Tu apoyo nos ayuda a salvar vidas. Dona hoy.</p>
      <a href="#">Dona Ahora</a>
    </section>
    <section class="programas-y-servicios">
      <h1>Programas y Servicios</h1>
      <p>Ofrecemos una serie de programas y servicios para apoyar a la juventud LGBTQ+</p>
      <a href="#">Saber más</a>
    </section>
  </main>
  <footer>
    <ul>
      <li><a href="#">Contáctanos</a></li>
      <li><a href="#">Política de Privacidad</a></li>
      <li><a href="#">Términos de Uso</a></li>
      <li><a href="#">Mapa</a></li>
    </ul>
    <div class="social-media">
      <a href="#"><img src="facebook.png" alt="Facebook"></a>
      <a href="#"><img src="twitter.png" alt="Twitter"></a>
      <a href="#"><img src="instagram.png" alt="Instagram"></a>
    </div>
  </footer>

  <script src="./resources/js/index.js"></script>
</body>
</html>