<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Help Center</title>
	<style>
	</style>

</head>
<body>
	<div class="container">
		<h1>Centro de Ayuda</h1>
		<p>Bienvenido al Centro de Ayuda. Aquí puedes encontrar valiosa información sobre nuestra web y servicios. Si tienes alguna pregunta o preocupación, no dudes en contactarnos usando el chat de abajo. </p>
		<h2>Preguntas frecuentes</h2>
		<ul>
			<li><a href="#question1">¿Cómo creo una cuenta? </a></li>
			<li><a href="#question2">¿Cómo restablezco mi contraseña?</a></li>
			<li><a href="#question3">¿Cómo contacto con vosotros?</a></li>
			
		</ul>
		<h2 id="question1">¿Cómo creo una cuenta?</h2>
		<p>Para crear una cuenta, simplemente pulsa en "Suscribirse" en la zona superior de la página. Después, rellene el formulario de inscripción y pulsa "Enviar". Recibirás un correo de confirmación con instrucciones para activar la cuenta.</p>
		<h2 id="question2">¿Cómo restablezco mi contraseña?</h2>
		<p>Simplemente pulse "He olvidado mi contraseña" en la página de ingreso. Después, introduce tu email y sigue las instrucciones</p>
		<h2 id="question3">¿Cómo contacto con vosotros?</h2>
		<p>Puedes contactar con nosotros a traves del   chat al final de la página o en nuestro número de teléfono +34 (***)-**-****</p>
		
	</div>
	<div class="chat-box"></div>
    <h2>Chatea con nosotros</h2>
	<form>
		<label for="name">Nombre:</label>
		<input type="text" id="name" name="name" required>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		<label for="message">Mensaje:</label>
		<textarea id="message" name="message" required></textarea>
		<button type="submit">Enviar</button>
	</form>
</div>
<script>
	const form = document.querySelector('form');
	form.addEventListener('submit', event => {
		event.preventDefault();
		alert('¡Muchas gracias! Te responderemos en breves.');
		form.reset();
	});
</script>
</body>
</html>