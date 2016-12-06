package step_definitions;

import cucumber.api.java.en.*;
import cucumber.api.PendingException;
import implementation.ClassMove;
import static org.junit.Assert.*;

public class ClassMoveTest{
ClassMove classmove = new ClassMove();

	@Given("^csv \"(.*?)\"$")
	public void csv(String arg1) throws Throwable {
		classmove.parseString(arg1);
	}

}