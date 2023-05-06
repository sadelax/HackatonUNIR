package util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMF {

	private static EntityManagerFactory emf;
	
	private EMF() {} // el único constructor que tiene es privado, por lo que no se pueden crear objetos de esta clase
	
	public static EntityManagerFactory getEmf() {
		if(emf == null) {
			emf = Persistence.createEntityManagerFactory("hackatonUNIR");
		}
		return emf;
	}
}
