package persistencia;

import modelo.User;

public interface UserDao {

	// registro
	public void save(User u);
	
	// login
	public User login(String usuario, String password);
}
