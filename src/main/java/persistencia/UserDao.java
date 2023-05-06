package persistencia;

import modelo.User;

public interface UserDao {

	// registro
	public boolean save(User u);
	
	// login
	public User login(String usuario, String password);
}
