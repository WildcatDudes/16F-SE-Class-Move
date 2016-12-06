package implementation;

import java.util.*;
import java.io.BufferedReader;
//import classes.Student;
import classes.Course;
import classes.Instructor;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;


public class ClassMove{
	private Vector bannerIDs = new Vector();            //working
    private Vector courses = new Vector();              //working
    private Vector students = new Vector();             //working
    private Vector fullStudents = new Vector();         //working
    private Vector fullCourses = new Vector();          //working
    private Vector fullProf = new Vector();
    private Vector yearClass = new Vector();            //working
    private Vector yearDesc = new Vector();             //working
    private Vector profID = new Vector();               //working
    private Vector profName = new Vector();             //working
    private Vector classTimes = new Vector();			//working
    private Vector buildingCodes = new Vector();		//working
    private Vector buildings = new Vector();			//working
    private Vector scheduleCodes = new Vector();		//working
    private Vector studentsEnrolled = new Vector();		//working

    
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
	}

	public void parseString(String arg1)
	{
        String csvFile = arg1;
        String line = "";
        String cvsSplitBy = ",";
		Vector inside = new Vector();
		Vector outside = new Vector();


        /*Indices and their matching values
          33: Year Classification (FR/SO/JR/SR)
          34: Year Description (Freshman,Sophmore)
          35: CRN
          40: Subject Code (ART, BIBH, PEAC)
          42: Course Number
          43: Section Number
          45: Course Name
          49: Instructor ID
          50: Instructor Name ("Brokaw, Bryan", "Maxwell, Jack")
          56: Student Banner ID
          57: Student First Name
          58: Student Last Name
          66: Class Begin Time (1330, 1200)
          67: Class End Time (1520, 1320)
          68: Building Code (RHD, DMC)
          69: Building Description (Rhoden Farm, Don H. Morris Center)
          70: Room Code
          71: Schedule Code (LAB, LEC, WEB)
          72: Monday Class Indicator
          73: Tuesday Class Indicator
          74: Wednesday Class Indicator
          75: Thursady Class Indecator
          76: Friday Class Indicator
          77: Saturday Class Indicator
          78: Sunday Class Indicator
          140: # Students Enrolled
        */


        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {

            while ((line = br.readLine()) != null) {

                String[] hold = line.split(",(?=([^\"]*\"[^\"]*\")*[^\"]*$)");				//splits csv by comma, ignoring commas in "double quotes"
                String courseName = hold[40] + hold[42] + "." + hold[43] + "/" + hold[35];	//ex. ANSC360.L3/10207
                String names  = hold[57] + " " + hold[58];									//ex. "Sheila Bibb"
                String classTime = hold[72] + hold[73] + hold[74] + hold[75] + hold[76] + hold[77] + hold[78] + ":" + hold[66] + "-" + hold[67];	//ex. "MWF:1330-1520"
                String buildingCode = hold[68] + hold[70];									//ex. DMC227

                //Sets up the students occupied schedule
                Student student = new Student();
                student.create(names, hold[33], hold[34], hold[56]);
                student.addClass(classTime);
                if (students.contains(student.getName()) == false)
                	fullStudents.add(student);
                else
                {
                	int studentIndex = students.indexOf(student.getName());
					Student.class.cast(fullStudents.get(studentIndex)).addClass(classTime);
                }

            	Course course = new Course();
            	course.create(courseName, classTime, hold[69], hold[140], hold[71], buildingCode);
            	course.addStudent(names);
            	if (courses.contains(course.getName()) == false)
            		fullCourses.add(course);
            	else
            	{
            		int courseIndex = courses.indexOf(course.getName());
            		Course.class.cast(fullCourses.get(courseIndex)).addStudent(names);
            	}


            	//Sets up the professors occupied schedule
            	Instructor instructor = new Instructor();
            	instructor.create(hold[50], hold[49]);
            	instructor.addClass(classTime);
            	if (profName.contains(instructor.getName()) == false)
            		fullProf.add(instructor);
            	else
            	{
            		int profIndex = profName.indexOf(instructor.getName());
            		Instructor.class.cast(fullProf.get(profIndex)).addClass(classTime);
            	}

                if (studentsEnrolled.contains(hold[140]) == false)	//adds all elements of students enrolled
                	studentsEnrolled.add(hold[140]);				

                if (scheduleCodes.contains(hold[71]) == false)		//adds schedule code if not already
                	scheduleCodes.add(hold[71]);

                if (buildings.contains(hold[69]) == false)			//adds building name if not already
                	buildings.add(hold[69]);

                if (buildingCodes.contains(buildingCode) == false)	//adds bulding codes if not already
                	buildingCodes.add(buildingCode);

                if (classTimes.contains(classTime)== false)			//adds class times if not already
                	classTimes.add(classTime);

                if (bannerIDs.contains(hold[56]) == false)			//adds banner ID if not already
                	bannerIDs.add(hold[56]);

                if (profID.contains(hold[49]) == false)         	//adds instructor ID if not already
                    profID.add(hold[49]);

                if (profName.contains(hold[50]) == false)       	//adds instructor name if not already
                    profName.add(hold[50]);

                if (yearClass.contains(hold[33]) == false)      	//adds year classification if not already
                    yearClass.add(hold[33]);

                if (yearDesc.contains(hold[34]) == false)       	//adds year description if not already
                    yearDesc.add(hold[34]);

                if (courses.contains(courseName) == false)      	//checks to see if course exists then adds to vector
                    courses.add(courseName);

                //fullCourses.add(courseName);                    	//adds every instance of a course to vector

                if (students.contains(names) == false)          	//checks to see if student exists then adds to vector
                     students.add(names);

                //fullStudents.add(names);                        	//adds every instance of a student to vector
                
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        for (int i = 0; i < fullStudents.size();i++)
        {
        	Vector schedule = Student.class.cast(fullStudents.get(i)).getSchedule();
        	System.out.println(Student.class.cast(fullStudents.get(i)).getName());
        	for (int j = 0; j < schedule.size();j++)
        		System.out.println(schedule.get(j));
        }

        for (int i = 0; i < fullCourses.size();i++)
        {
        	Vector list = Course.class.cast(fullCourses.get(i)).getStudents();
        	System.out.println(Course.class.cast(fullCourses.get(i)).getName());
        	for (int j = 0; j < list.size();j++)
        		System.out.println(list.get(j));
        }

        for (int i = 0; i < fullProf.size();i++)
        {
        	Vector schedule = Instructor.class.cast(fullProf.get(i)).getSchedule();
        	System.out.println(Instructor.class.cast(fullProf.get(i)).getName());
        	for (int j = 0; j < schedule.size();j++)
        		System.out.println(schedule.get(j));
        }

	}
}