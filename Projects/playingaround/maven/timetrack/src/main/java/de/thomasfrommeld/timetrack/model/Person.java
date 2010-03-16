package de.thomasfrommeld.timetrack.model;

import java.io.Serializable;
import java.util.Date;

public class Person implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public Long getDate() {
		return new Date().getTime();
	}
	
	
}
