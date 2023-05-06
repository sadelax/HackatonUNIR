<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link rel="stylesheet" href="${css}register.css">
  </head>
  <body>
    <h1>Registro</h1>
    <form>
      <label for="name">Nombre</label>
      <input type="text" id="name" name="name" required><br>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required><br>

      <label for="phone">Teléfono:</label>
      <input type="tel" id="phone" name="phone" required><br>

      <label for="dob">Fecha de Nacimiento:</label>
      <input type="date" id="dob" name="dob" required><br>

      <label for="gender">Género:</label>
      <select id="gender" name="gender" required>
        <option value="">--Selecciona una opción--</option>
        <option value="cis_male">Hombre Cis</option>
        <option value="cis_female">Mujer Cis</option>
        <option value="trans_male">Hombre Trans</option>
        <option value="trans_woman">Mujer Trans</option>
        <option value="non-binary">No Binario</option>
        <option value="other">Otro</option>
        <option value="unknown">Prefiero no contestar</option>
      </select><br>

      <label for="country">País:</label>
      <input type="text" id="country" name="country" required><br>

      <label for="province">Provincia:</label>
      <input type="text" id="province" name="province" required><br>

      <label for="profile-pic"> Foto de perfil (No obligatoria):</label>
      <input type="file" id="profile-pic" name="profile-pic" accept="image/*"><br>

      <input type="checkbox" id="terms" name="terms" required>
      <label for="terms">He leído y acepto la política de privacidad</label><br>

      <button type="submit">Enviar</button>
    </form>

    <script src="validateform.js"></script>
  </body>
</html>