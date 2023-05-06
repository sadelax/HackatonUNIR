package negocio;

import modelo.User;

public interface RegistroLogin {

	// registrar usuario
	boolean registro(User u);
	
	// login usuario ya registrado
	User login(String username, String password);
}
