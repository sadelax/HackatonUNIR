package persistencia;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import modelo.User;
import util.EMF;

public class UserDaoImpl implements UserDao {

	private EntityManager em;
	
	@Override
	public boolean save(User u) {
		em = EMF.getEmf().createEntityManager();
		try {			
			em.getTransaction().begin();
			em.persist(u);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			em.close();			
		}
	}

	@Override
	public User login(String usuario, String password) {
		em = EMF.getEmf().createEntityManager();
		User u;
		String jpql = "SELECT u FROM User u WHERE u.username = :usuario AND u.password = :password";
		TypedQuery<User> q = em.createQuery(jpql, User.class);
		q.setParameter("usuario", usuario);
		q.setParameter("password", password);
		try {
			u = q.getSingleResult();
		} catch (Exception e) {
			u = null;
		}
		em.close();
		return u;
	}

}
