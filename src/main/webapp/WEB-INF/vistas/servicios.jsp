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
  <link rel="stylesheet" href="${css}/aboutus.css">
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
  <style>
    .profileBtnPos, .logoutBtnPos {
      display: inline-block;
      margin-left: 10px;
    }

    .logoutBtnPos {
      position: fixed;
      right: 10px;
      top: 5px;
    }
  </style>
</head>
<body>
  <header>
    <div class="grid">
      <a href="${home}/index"><img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/Malvaloca_Rural_NOEslogan-removebg.png?raw=true" alt="Malvaloca Rural" class = 'logo'></a>
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
      <a href="#" id="profileBtn" class="profileBtnPos">Profile</a>
      <a href="${home}/cerrar_sesion" id="logoutBtn" class="logoutBtnPos">Close Session</a>
    </div>
  </header>
  <main class='grid-container'>
    <div class="grid-item1">
      <h1>Tus Zonas Seguras</h1>
      <div class="google-map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7093.456093462131!2d-4.597567330675018!3d40.99481351498675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683398774266!5m2!1ses!2ses" width="300" height="340" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
    </div>
    <div class="grid-item2">
      <h1>Descubre en nuestro blog</h1>
      <p>Entra aqui!!</p>
      <a href="#">Saber mÃ¡s</a>
    </div>
    <div class="grid-item3">
      <h1>Conecta en el foro</h1>
      <p>Tu apoyo nos ayuda a salvar vidas. Dona hoy.</p>
      <a href="#">Dona Ahora</a>
    </div>
    <div class="grid-item4">
      <h1>PrÃ³ximos Eventos</h1>
      <p>Ofrecemos una serie de programas y servicios para apoyar a la juventud LGBTQ+</p>
      <a href="#">Saber mÃ¡s</a>
    </div>
  </main>
  <script>
    document.getElementById("logoutBtn").addEventListener("click", function () {
      // Remove access token and reload the page
      localStorage.removeItem("accessToken");
      location.reload();
    });

    document.addEventListener("DOMContentLoaded", function () {
      var profileBtn = document.getElementById("profileBtn");
      var logoutBtn = document.getElementById("logoutBtn");

      // Check if the user is logged in
      var isLoggedIn = !!localStorage.getItem("accessToken");

      if (isLoggedIn) {
        profileBtn.style.display = "inline-block";
        logoutBtn.style.display = "inline-block";
      } else {
        profileBtn.style.display = "none";
        logoutBtn.style.display = "none";
      }
    });
  </script>
  </body>
</html>