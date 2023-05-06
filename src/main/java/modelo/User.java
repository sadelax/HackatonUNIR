package modelo;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "users")
public class User implements Serializable, Comparable<User> {

	@Id
	@Column(name = "id_user")
	private int idUser;
	private String username;
	private String email;
	@Column(name = "dob")
	private Date birthday;
	private String gender;
	@Column(name = "s_orientation")
	private String orientation;
	private String country;
	private String province;
	private String password;
	private String password2;
	
	public User() {}
	
	public User(String username, String email, String gender, String orientation, String password, String password2) {
		this.username = username;
		this.email = email;
		this.gender = gender;
		this.orientation = orientation;
		this.password = password;
		this.password2 = password2;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getOrientation() {
		return orientation;
	}

	public void setOrientation(String orientation) {
		this.orientation = orientation;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idUser, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return idUser == other.idUser && Objects.equals(username, other.username);
	}

	@Override
	public String toString() {
		return "User [idUser=" + idUser + ", username=" + username + ", email=" + email + "]";
	}

	@Override
	public int compareTo(User o) {
		return this.idUser - o.idUser;
	}
	
	
}
