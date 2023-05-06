package modelo;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@SuppressWarnings("serial")
@Entity
public class Tema implements Serializable, Comparable<Tema> {

	@Id
	@Column(name = "Id_Tema")
	private int idTema;
	private String content;
	private User createdBy;
	private LocalDateTime createdDate;
	
	public Tema() {}
	
	public Tema(String content, User createdBy) {
		this.content = content;
		this.createdBy = createdBy;
	}

	public int getIdTema() {
		return idTema;
	}

	public void setIdTema(int idTema) {
		this.idTema = idTema;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(User createdBy) {
		this.createdBy = createdBy;
	}

	public LocalDateTime getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDateTime createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public int hashCode() {
		return Objects.hash(createdDate, idTema);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Tema other = (Tema) obj;
		return Objects.equals(createdDate, other.createdDate) && idTema == other.idTema;
	}

	@Override
	public String toString() {
		return "Tema{" +
		            "idTema=" + idTema +
		            ", contenido='" + content + '\'' +
		            ", creado por='" + createdBy + '\'' +
		            ", fecha creacion=" + createdDate.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")) +
		            '}';	
	}

	@Override
	public int compareTo(Tema o) {
		return o.createdDate.compareTo(this.createdDate);
	}
}
