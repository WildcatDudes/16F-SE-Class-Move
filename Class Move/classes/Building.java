package classes;

import java.util.*;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Building{
	private Vector schedule = new Vector();
	private String location;
	private String size;


	public void create(String a, String b)
	{
		location = a;
		size = b;
	}

	public String getName(){return location;}

	public void addClass(String classTime){schedule.add(classTime);}


}