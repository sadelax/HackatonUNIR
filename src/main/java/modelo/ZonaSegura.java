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
public class ZonaSegura implements Serializable, Comparable<ZonaSegura> {

	@Id
	@Column(name = "Id_Zona")
	private int idZona;
	private float latitude;
	private float  longitude;
	private String name;
	private String provincia;
	private String createdBy;
	private LocalDateTime createdDate;
	
	public ZonaSegura() {}
	
	public ZonaSegura(float latitude, float longitude) {
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	public ZonaSegura(String name, String provincia) {
		this.name = name;
		this.provincia = provincia;
	}
	
	public ZonaSegura(String createdBy, LocalDateTime createdDate) {
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	
	public int getIdZona() {
		return idZona;
	}

	public void setIdZona(int idZona) {
		this.idZona = idZona;
	}

	public float getLatitude() {
		return latitude;
	}

	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}

	public float getLongitude() {
		return longitude;
	}

	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
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
		return Objects.hash(idZona, latitude, longitude);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ZonaSegura other = (ZonaSegura) obj;
		return idZona == other.idZona && Float.floatToIntBits(latitude) == Float.floatToIntBits(other.latitude)
				&& Float.floatToIntBits(longitude) == Float.floatToIntBits(other.longitude);
	}
	
	@Override
	public String toString() {
	    return String.format("ZonaSegura: id=%d, name='%s', location=(%f,%f), created by='%s', created on='%s'",
	        idZona, name, latitude, longitude, createdBy, createdDate.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));
	}

	@Override
	public int compareTo(ZonaSegura other) {
	    // Ordenar por provincia en orden alfabético ascendente
	    int result = this.provincia.compareTo(other.provincia);
	    if (result == 0) {
	        // Si las provincias son iguales, ordenar por nombre de zona en orden alfabético ascendente
	        result = this.name.compareTo(other.name);
	    }
	    return result;
	}
}
