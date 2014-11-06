import static org.junit.Assert.*;
import mySite.validate_login;

import org.junit.Test;


public class sql_validate {

	@Test
	public void test() {
		String login_name = "gcconboard";
		String password = "Pass987";
		String v1 = new String(validate_login.checkUser(login_name,password));
		assertEquals("user", v1);
		System.out.println(v1);
	}

}
