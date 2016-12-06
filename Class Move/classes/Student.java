package classes;

import java.util.*;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Student{
	private String classification;
	private String classDescription;
	private Vector schedule = new Vector();
	private String name;
	private String bannerID;


	public void create(String studentName, String studentClassification, String studentDescription, String id)
	{
		classification = studentClassification;
		classDescription = studentClassification;
		name = studentName;
		bannerID = id;
	}

	public String getName(){return name;}

	public void addClass(String classTime){schedule.add(classTime);}

	public Vector getSchedule(){return schedule;}

	public String getYear(){return classification;}
}