package com.cursoceat.controller;

import java.io.File;

import com.cursoceat.xml.schema.Club;
import com.cursoceat.xml.schema.Club.Socio;

import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.JAXBException;
import jakarta.xml.bind.Marshaller;
import jakarta.xml.bind.Unmarshaller;

public class Controller {

	public static void main(String[] args) throws JAXBException {
		// TODO Auto-generated method stub

		leerXML();
		escribirXML();
		
	}

	
	public static void leerXML() throws JAXBException {
		
		File miArchivo = new File("C:\\Users\\PROGRAMACION\\Documentos\\JAVA\\ClubSosiosMaven\\registro.xml");
		/**desagrupar xml unmarshall es leer un xml a partir de un archivo 
		  1. crear el contexto
		  2. leer o desagrupar a partir de un archivo xml **/
		
		
		JAXBContext miContexto= JAXBContext.newInstance(Club.class);
		Unmarshaller miLectura= miContexto.createUnmarshaller();
		/**  debemos crear el objeto club con los socios a partir de la lectura que ha hecho el unmarshal con el archivo**/
		Club socios= (Club)miLectura.unmarshal(miArchivo);
			for (Socio s: socios.getSocio() ) {
				System.out.println(s.getIdSocio());
				System.out.println(s.getNombreSocio());
				System.out.println(s.getDireccion());
				System.out.println(s.getFechaAlta());
				
				
			}
	}
	
	public static void escribirXML() throws JAXBException{
		/**creamos una coleccion que nos permita guardar los datos de los socios leidos en xml**/
		Club miClub = new Club();
		/** socio 1 **/
		Socio socio1 = new Socio();
		socio1.setIdSocio(1);
		socio1.setNombreSocio("Mari Carmen");
		socio1.setDireccion("Calle Maria del Prado, 36");
		socio1.setFechaAlta("13/02/2023");
		miClub.getSocio().add(socio1);
	    /** socio 2**/
		Socio socio2 = new Socio();
		socio2.setIdSocio(2);
		socio2.setNombreSocio("Antonio");
		socio2.setDireccion("Calle Maria del Prado, 36");
		socio2.setFechaAlta("16/04/2022");
		miClub.getSocio().add(socio2);
	    /** socio 3**/
		Socio socio3 = new Socio();
		socio3.setIdSocio(3);
		socio3.setNombreSocio("Maria");
		socio3.setDireccion("Calle Maria del Prado, 36");
		socio3.setFechaAlta("01/08/2019");
		miClub.getSocio().add(socio3);
	
		/** agrupar xml marshaller es crear un xml a partir de unos datos
		1. crear el contexto
		2. crear el xml con el marshall 
		**/
		
		JAXBContext miContexto= JAXBContext.newInstance(Club.class);
		/**creamos el agrupamiento**/
		Marshaller miLectura= miContexto.createMarshaller();
		/**indicamos el formato como se genera el agrupamiento con JAXB_FORMATTED_OUTPUT**/
		miLectura.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT,true);
		/** mostramos por pantalla**/
		
		miLectura.marshal(miClub, System.out);
		/** creamos un archivo a partir de los objetos creados*/
		miLectura.marshal(miClub, new File("C:\\Users\\PROGRAMACION\\Documentos\\JAVA\\ClubSosiosMaven\\registro.xml"));
		
	}
}
