package classes;

import java.util.*;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Course{
	private String name;					//ANSC360.L3/10207
	private String time;
	private String location;
	private String studentsInClass;
	private String classCode;
	private String locationCode;
	private String teacher;
	private Vector students = new Vector();

	public void create(String a, String b, String c, String d, String e, String f, String g)
	{
		name = a;
		time = b;
		location = c;
		studentsInClass = d;
		classCode = e;
		locationCode = f;
		teacher = g;
	}

	public String getName(){return name;}

	public void addStudent(String a){students.add(a);}

	public Vector getStudents(){return students;}

	public String getTime(){return time;}

	public String getLocation(){return locationCode;}

	public String getTeacher(){return teacher;}

	public String getCode(){return classCode;}
}