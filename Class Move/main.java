import java.util.*;
import java.io.BufferedReader;
import classes.Student;
import classes.Course;
import classes.Instructor;
import classes.Building;
import java.io.*;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;


class main{
	private static Vector bannerIDs = new Vector();            //working
    private static Vector courses = new Vector();              //working
    private static Vector students = new Vector();             //working
    private static Vector fullStudents = new Vector();         //working
    private static Vector fullCourses = new Vector();          //working
    private static Vector fullProf = new Vector();
    private static Vector yearClass = new Vector();            //working
    private static Vector yearDesc = new Vector();             //working
    private static Vector profID = new Vector();               //working
    private static Vector profName = new Vector();             //working
    private static Vector classTimes = new Vector();			//working
    private static Vector buildingCodes = new Vector();		//working
    private static Vector buildings = new Vector();			//working
    private static Vector scheduleCodes = new Vector();		//working
    private static Vector studentsEnrolled = new Vector();		//working


    public static void changeClass() throws IOException
    {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));  
        String text = "";
        System.out.println("What class would you like to change?");
        text = br.readLine();

        int index = courses.indexOf(text);
        Course course = Course.class.cast(fullCourses.get(index));

        if (course.getCode().equals("WEB"))
        {
            System.out.println("This is an online course and does not need to be moved.");
            return;
        }
        Vector list = Course.class.cast(fullCourses.get(index)).getStudents();
        String time = Course.class.cast(fullCourses.get(index)).getTime();
        String location = Course.class.cast(fullCourses.get(index)).getLocation();

        System.out.println(text + " currently meets at " + time + " in " + location + ". Where do you want to move it?");

        br = new BufferedReader(new InputStreamReader(System.in));
        text = br.readLine();

        Boolean canChange = true;
        int countSR = 0;
        int countJR = 0;
        int countSO = 0;
        int countFR = 0;
        int countGR = 0;
        int countSU = 0;
        int countSRmax = 0;
        int countJRmax = 0;
        int countSOmax = 0;
        int countFRmax = 0;
        int countGRmax = 0;
        int countSUmax = 0;
        double countSRratio = 0;
        double countJRratio = 0;
        double countSOratio = 0;
        double countFRratio = 0;
        double countGRratio = 0;
        double countSUratio = 0;

        for (int i = 0; i < list.size();i++)
        {
            index = students.indexOf(list.get(i));
            Student hold = Student.class.cast(fullStudents.get(index));
            if (hold.getSchedule().contains(text))
            {
                canChange = false;
            
                if (hold.getYear().equals("SR"))
                    countSR++;
                else if (hold.getYear().equals("JR"))
                    countJR++;
                else if (hold.getYear().equals("SO"))
                    countSO++;
                else if (hold.getYear().equals("FR"))
                    countFR++;
                else if (hold.getYear().equals("GR"))
                    countGR++;
                else if (hold.getYear().equals("SU"))
                    countSU++;
            }
                if (hold.getYear().equals("SR"))
                    countSRmax++;
                else if (hold.getYear().equals("JR"))
                    countJRmax++;
                else if (hold.getYear().equals("SO"))
                    countSOmax++;
                else if (hold.getYear().equals("FR"))
                    countFRmax++;
                else if (hold.getYear().equals("GR"))
                    countGRmax++;
                else if (hold.getYear().equals("SU"))
                    countSUmax++;
        }

        if (canChange == true)
        {
            System.out.println("Success! The class has been changed.");
            return;
        }
        else
            System.out.println("Not all students can move this class. " + countGR + " of " + countGRmax + " graduate students can attend, " + countSU + " of " + countSUmax + " special undergraduates can attend, " + countSR + " of " + countSRmax + " seniors can attend, " + countJR + " of " + countJRmax + " juniors can attend, " + countSO + " of " + countSRmax + " sophmores can attend, and " + countFR + " of " + countFRmax + " can attend.");

        Vector bestClasses = new Vector();
        Boolean eligible = true;
        for (int i = 0; i < classTimes.size(); i++)
        {
            eligible = true;
            for (int j = 0; j < list.size();j++)
            {
                index = students.indexOf(list.get(j));
                Student hold = Student.class.cast(fullStudents.get(index));
                if (hold.getSchedule().contains(classTimes.get(i)) == false)
                {
                    eligible = false;
                    break;
                }
            }

            int profIndex = profName.indexOf(course.getTeacher());
            Instructor prof = Instructor.class.cast(fullProf.get(profIndex));

            if (prof.getSchedule().contains(classTimes.get(i)) == true)
            {
                eligible = false;
            }

            if (eligible == true && !classTimes.get(i).equals(time))
            {
                System.out.println("All students can attend " + classTimes.get(i) + ".");
                bestClasses.add(classTimes.get(i));
                if (bestClasses.size() < 5)
                    break;
            }
            
            
                if (countSRmax > 0)
                    countSRratio = countSR/countSRmax;
                if (countJRmax > 0)
                    countJRratio = countJR/countJRmax;
                if (countSOmax > 0)
                    countSOratio = countSO/countSOmax;
                if (countFRmax > 0)
                    countFRratio = countFR/countFRmax;
                if (countGRmax > 0)
                    countGRratio = countGR/countGRmax;
                if (countSUmax > 0)
                    countSUratio = countSU/countSUmax;
            
        }
        if (eligible == false)
        {
            int count = 5;
            for (int i = 10; i < classTimes.size();i++)
            {
                int profIndex = profName.indexOf(course.getTeacher());
                Instructor prof = Instructor.class.cast(fullProf.get(profIndex));

                if (prof.getSchedule().contains(classTimes.get(i)) == false)
                {
                    System.out.println("A majority of students can attend " + classTimes.get(i));
                    count--;
                    if (count == 0)
                        break;
                }   
            }
        }

    }

    public static void inputHandler(String arg1) throws IOException
    {
        int index;
        Vector list;
        if (arg1.equals("change"))
        {
            changeClass();
        }
        else if (courses.contains(arg1))
        {
                index = courses.indexOf(arg1);
                list = Course.class.cast(fullCourses.get(index)).getStudents();
                System.out.println("Students in the course are: ");
                for (int j = 0; j < list.size();j++)
                    System.out.println(list.get(j));
        }
        else if (students.contains(arg1))
        {
                index = students.indexOf(arg1);
                list = Student.class.cast(fullStudents.get(index)).getSchedule();
                System.out.println("This student's schedule is: ");
                for (int j = 0; j < list.size();j++)
                    System.out.println(list.get(j));
        }
        else if (profName.contains(arg1))
        {
                index = profName.indexOf(arg1);
                list = Instructor.class.cast(fullProf.get(index)).getSchedule();
                System.out.println("This professor's schedule is: ");
                for (int j = 0; j < list.size();j++)
                    System.out.println(list.get(j));
        }
        else
            System.out.println("Invalid Input.");


    }

	public static void parseString(String arg1)
	{
        String csvFile = arg1;
        String line = "";
        String cvsSplitBy = ",";
		Vector inside = new Vector();
		Vector outside = new Vector();
        String[] places = {"HOLD"};


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

        try (BufferedReader br = new BufferedReader(new FileReader("CLassroom Sizes.csv"))) {

            while ((line = br.readLine()) != null) {
                places = line.split(",(?=([^\"]*\"[^\"]*\")*[^\"]*$)");

                buildingCodes.add(places);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

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
            	course.create(courseName, classTime, hold[69], hold[140], hold[71], buildingCode, hold[50]);
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

        /*for (int i = 0; i < fullStudents.size();i++)
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
        }*/

	}

    public static void main(String args[]) throws IOException
    {
        String csv = "Current Semester.csv";

        System.out.println("Using filename: \"Current Semester.csv\"");
        //csv = in.nextLine();
        parseString(csv);
        //s = in.nextLine();
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));  
        String text = "";  
        do
        {
            System.out.println("Please enter a student name, course, professor name, or \"change\": ");
            text = br.readLine(); 
            inputHandler(text);
        }
        while (!text.equals("stop"));
    }
}