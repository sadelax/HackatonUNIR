package persistencia;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import modelo.User;
import util.EMF;

public class UserDaoImpl implements UserDao {

	private EntityManager em;
	
	@Override
	public void save(User u) {
		em = EMF.getEmf().createEntityManager();
		try {
			TypedQuery<User> q = em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class);
			q.setParameter("username", u.getUsername());
			List<User> res = q.getResultList();
			
			if(res.isEmpty()) {
				em.getTransaction().begin();
				em.merge(u);
				em.getTransaction().commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		em.close();
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
