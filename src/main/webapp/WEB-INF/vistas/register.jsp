<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Registro</title>
  <link rel="stylesheet" href="${css}/register.css">
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<h1 class="text-4xl font-mono text-center py-2">Registro</h1>
<h4></h4>

<body>
  <form action="${home}/registro" method="post">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" required><br>


    <label class="block font-mono" for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label class="block font-mono" for="phone">Teléfono:</label>
    <input type="tel" id="phone" name="phone"><br>

    <label class="block font-mono" for="dob">Fecha de nacimiento:</label>
    <input type="date" id="dob" name="dob" required><br>

    <label class="block font-mono" for="gender">Género:</label>
    <select id="gender" name="gender" required
      class="bg-gray-50 border border-gray-300 text-gray-900 text-md rounded focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
      <option value="">--Selecciona una opción--</option>
      <option value="cis_male">Hombre Cis</option>
      <option value="cis_female">Mujer Cis</option>
      <option value="trans_male">Hombre Trans</option>
      <option value="trans_woman">Mujer Trans</option>
      <option value="non-binary">No Binario</option>
      <option value="other">Otro</option>
      <option value="unknown">Prefiero no contestar</option>
    </select><br>

    <label class="block font-mono" for="s_orientation">Orientación sexual:</label>
    <select id="s_orientation" name="s_orientation" required
      class="bg-gray-50 border border-gray-300 text-gray-900 text-md rounded focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">

      <option value="">--Selecciona una opción--</option>
      <option value="homosexual">Homosexual</option>
      <option value="bisexual">Bisexual</option>
      <option value="asexual">Asexual</option>
      <option value="others">Otro</option>
      <option value="unknown">Prefiero no contestar</option>
    </select><br>

    <label class="block font-mono" for="country">País:</label>
    <input type="text" id="country" name="country"><br>

    <label class="block font-mono" for="province">Provincia:</label>
    <input type="text" id="province" name="province"><br>

    <label for="password" class="block font-mono">Contraseña:</label>
    <input type="password" id="password" name="password"
      class="px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent w-full"
      required><br>

    <label for="password2" class="block font-mono">Repite contraseña:</label>
    <input type="password" id="password2" name="password2"
      class="px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent w-full"
      required><br>


    <label for="profile-pic" class="block font-mono py-2"> Foto de perfil (no obligatoria):</label>
    <input type="file" id="profile-pic" name="profile-pic" accept="image/*"><br>
    <div class="flex" >
      <input type="checkbox" id="terms" name="terms" required>
      <label for="terms">He leído y acepto la política de privacidad</label><br>
    </div>

    <button type="submit">Enviar</button>
  </form>

  <script src="validateform.js"></script>
</body>

</html>