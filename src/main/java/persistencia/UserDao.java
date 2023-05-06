package persistencia;
import org.springframework.data.jpa.repository.JpaRepository;

import modelo.User;

public interface UserDao extends JpaRepository<User, Integer> {

}
