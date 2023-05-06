package negocio;

import modelo.User;
import persistencia.UserDao;
import persistencia.UserDaoImpl;

public class RegistroLoginImpl implements RegistroLogin {
	
	private UserDao ud = new UserDaoImpl();

	@Override
	public boolean registro(User u) {
		if(u != null) {
			ud.save(u);
			return true;
		} else {
			return false;
		}
		
	}

	@Override
	public User login(String username, String password) {
		return ud.login(username, password);
	}

}
