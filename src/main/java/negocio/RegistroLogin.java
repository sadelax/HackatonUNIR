package negocio;

import modelo.User;

public interface RegistroLogin {

	// registrar usuario
	void registro(User u);
	
	// login usuario ya registrado
	void login(User u);
}
