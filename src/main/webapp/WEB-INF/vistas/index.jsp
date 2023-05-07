<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Malvaloca Website</title>
  <!-- Add CSS file -->
  <link rel="stylesheet" href="${css}/index.css">
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
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
        <li><a href="${home}/servicios">Programas y Servicios</a></li>
      </ul>
    </nav>
    <div class="cta">
      <a href="#" id="profileBtn" class="profileBtnPos">Profile</a>
      <a href="${home}/cerrar_sesion" id="logoutBtn" class="logoutBtnPos">Close Session</a>
    </div>
  </header>

  <main>
    <section id="our-impact">
      <div class="container">
        <h2 class="text-center text-3xl font-bold text-gray-900 py-5">Nuestro Impacto</h2>
        <div class="grid grid-cols-2 gap-4">
          <div class="text-center">
            <h3 class="text-center text-1xl font-bold text-gray-900">Servicios de Crisis</h3>
            <p>Malvaloca Rural proporciona servicios de intervenciÃ³n en crisis y prevención de suicidios a personas LGBTQ jóvenes en crisis. Contamos con personal con experiencia, disponible 24h por teléfono, mensaje o chat, para proporcionar apoyo y ayuda a quienes lo necesiten.</p>
            <a href="#" class="btn btn-primary mx-auto inline-block px-6 py-3 rounded-md text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Saber Más</a>
          </div>
          <div class="text-center ml-8">
            <h3 class="text-center text-1xl font-bold text-gray-900">Espacio Malvaloca Rural</h3>
            <p>Espacio Malvaloca Rural es una red social para gente LGBTQ joven. Proporciona una comunidad online segura y de apoyo donde la gente joven puede conectar con otros, desarrollar amistades y recibir consejo y apoyo de otros usuarios.</p>
            <a href="#" class="btn btn-primary mx-auto inline-block px-6 py-3 rounded-md text-base font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Saber Más</a>
          </div>
        </div>
        <div class="row">
        </div>
      </div>
    </section>
    
  </main>
  <section class="p-4 p-md-5 text-center text-lg-start shadow-1-strong rounded testimonial-section" style="
  background-image: url(https://mdbcdn.b-cdn.net/img/Photos/Others/background2.webp);
">
<div class="row d-flex justify-content-center">
  <div class="col-md-10">
    <div class="card">
      <div class="row">
        <!-- Testimonial container -->
        <div class="testimonial-container">
          <!-- Testimonials row 1 -->
          <div class="testimonial-row">
            <!-- Testimonio 1 -->
            <div class="testimonial">
              <div class="card-body m-3">
                <!-- ... Testimonio 1 content ... -->
                <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/download.jpeg?raw=true" alt="Person" class="testimonial-image">
    <div class="testimonial-text">
      <h3 class="testimonial-name">Julia Ortega</h3>
      <p class="testimonial-description">Colaboradora</p>
      <p class="testimonial-quote">"Como persona que pertenece al colectivo y que ha sufrido discriminaciÃ³n por ello, es muy satisfactorio poder ayudar a otras personas que lo estÃ¡n pasando mal en situaciones similares. Malvaloca Rural es una soluciÃ³n muy potente a un problema real que es necesario abordar."</p>
              </div>
            </div>
            <!-- Testimonio 2 -->
            <div class="testimonial">
              <div class="card-body m-3">
                <!-- ... Testimonio 2 content ... -->
                <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/avatar1.jpeg?raw=true" alt="Person" class="testimonial-image">
    <div class="testimonial-text">
      <h3 class="testimonial-name">@etmarti</h3>
      <p class="testimonial-description">Usuario</p>
      <p class="testimonial-quote">"Fue muy importante para mi encontrar un espacio seguro en el k poder hablar de cosas k me preocupaban y k no podia hablar con nadie. he conseguido buenos amigos y gente que me apoya y me siento mucho menos solo"</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>

<section class="p-4 p-md-5 text-center text-lg-start shadow-1-strong rounded testimonial-section" style="
background-image: url(https://mdbcdn.b-cdn.net/img/Photos/Others/background2.webp);
">
<div class="row d-flex justify-content-center">
<div class="col-md-10">
  <div class="card">
    <div class="row">
      <!-- Testimonial container -->
      <div class="testimonial-container">
        <!-- Testimonials row 2 -->
        <div class="testimonial-row">
          <!-- Testimonio 3 -->
          <div class="testimonial">
            <div class="card-body m-3">
              <!-- ... Testimonio 3 content ... -->
              <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/avatar1.jpeg?raw=true" alt="Person" class="testimonial-image">
  <div class="testimonial-text">
    <h3 class="testimonial-name">@jav.rtg</h3>
    <p class="testimonial-description">Usuario</p>
    <p class="testimonial-quote">"la gente del pueblo no entiende que hayan personas diferentes y me ha costado siempre hacer amigos. aki puedo mandar mensajes a gente que me entiende "</p>
            </div>
          </div>
          <!-- Testimonio 4 -->
          <div class="testimonial">
            <div class="card-body m-3">
              <!-- ... Testimonio 4 content ... -->
              <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/download4.jpeg?raw=true" alt="Person" class="testimonial-image">
  <div class="testimonial-text">
    <h3 class="testimonial-name">María Garrido</h3>
    <p class="testimonial-description">Hospedadora</p>
    <p class="testimonial-quote">"Con 18 años me tuve que ir de casa porque mi padre no aprobaba mi "estilo de vida". Si ahora puedo ofrecer mi casa como refugio a alguien que necesita un espacio seguro lo hará sin duda. Malvaloca Rural es una iniciativa muy bonita y que puede mejorar la vida de muchas personas."</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</section>

<section class="p-4 p-md-5 text-center text-lg-start shadow-1-strong rounded testimonial-section" style="
background-image: url(https://mdbcdn.b-cdn.net/img/Photos/Others/background2.webp);
">
<div class="row d-flex justify-content-center">
<div class="col-md-10">
  <div class="card">
    <div class="row">
      <!-- Testimonial container -->
      <div class="testimonial-container">
        <!-- Testimonials row 3 -->
        <div class="testimonial-row">
          <!-- Testimonio 5 -->
          <div class="testimonial">
            <div class="card-body m-3">
              <!-- ... Testimonio 5 content ... -->
              <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/avatar1.jpeg?raw=true" alt="Person" class="testimonial-image">
  <div class="testimonial-text">
    <h3 class="testimonial-name">@rober786</h3>
    <p class="testimonial-description">Usuario</p>
    <p class="testimonial-quote">"En Malvaloca Rural he encontrado una comunidad plural e inclusiva que me permite ser yo mismo sin tener que esconderme y esa libertad no tiene precio"</p>
            </div>
          </div>
          <!-- Testimonio 6 -->
          <div class="testimonial">
            <div class="card-body m-3">
              <!-- ... Testimonio 6 content ... -->
              <img src="https://github.com/LauraDanielamg/HackatonUNIR/blob/main/images/avatar1.jpeg?raw=true" alt="Person" class="testimonial-image">
  <div class="testimonial-text">
    <h3 class="testimonial-name">estiii_99</h3>
    <p class="testimonial-description">Usuaria</p>
    <p class="testimonial-quote">"siempre e vivido aguantando bromas sobre las personas homosexuales y con miedo de decir como me sentia o quien me gustaba y necesitaba algun lugar para hablar de estas cosas"</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</section>
  <footer>
    <!-- Footer content here -->
  </footer>

  <!-- Add JS file -->
  <script src="aboutus.js"></script>
</body>
</html>