package modelo;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@SuppressWarnings("serial")
@Entity
public class Mensaje implements Serializable, Comparable<Mensaje> {

	@Id
	@Column(name = "Id_Mensaje")
	private int idMensaje;
	@Column(name = "Contenido_mensaje")
	private String contenidoMensaje;
	@OneToOne
	private User sender;
	@OneToOne
	private User receiver;
	private LocalDateTime createdDate;
	
	public Mensaje() {}
	
	public Mensaje(User sender, User receiver, String contenidoMensaje) {
		this.sender = sender;
		this.receiver = receiver;
		this.contenidoMensaje = contenidoMensaje;
	}
	
	public int getIdMensaje() {
		return idMensaje;
	}


	public void setIdMensaje(int idMensaje) {
		this.idMensaje = idMensaje;
	}


	public String getContenidoMensaje() {
		return contenidoMensaje;
	}


	public void setContenidoMensaje(String contenidoMensaje) {
		this.contenidoMensaje = contenidoMensaje;
	}


	public User getSender() {
		return sender;
	}


	public void setSender(User sender) {
		this.sender = sender;
	}


	public User getReceiver() {
		return receiver;
	}


	public void setReceiver(User receiver) {
		this.receiver = receiver;
	}


	public LocalDateTime getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(LocalDateTime createdDate) {
		this.createdDate = createdDate;
	}


	@Override
	public int hashCode() {
		return Objects.hash(idMensaje, receiver, sender);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Mensaje other = (Mensaje) obj;
		return idMensaje == other.idMensaje && Objects.equals(receiver, other.receiver)
				&& Objects.equals(sender, other.sender);
	}


    @Override
    public String toString() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        String formattedDate = createdDate.format(formatter);
        return "Mensaje #" + idMensaje + " [" + formattedDate + "]:\n"
                + "De: " + sender.getUsername() + "\n"
                + "Para: " + receiver.getUsername() + "\n"
                + "Mensaje: " + contenidoMensaje + "\n";
    }

	@Override
	public int compareTo(Mensaje o) {
		return o.createdDate.compareTo(this.createdDate);
	}

}
