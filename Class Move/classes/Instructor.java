package classes;

import java.util.*;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Instructor{
	private Vector schedule = new Vector();
	private String name;
	private String id;

	public void create(String a, String b)
	{
		name = a;
		id = b;
	}

	public String getName(){return name;}

	public void addClass(String classTime){schedule.add(classTime);}

	public Vector getSchedule(){return schedule;}
}