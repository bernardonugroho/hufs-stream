package XPDL_Esper;

public class FactoryData {
	String username;
	String email;
	int age;

	public void setUsername (String value)
	{ username = value; }

	public void setEmail (String value)
	{ email = value; }

	public void setAge(int value)
	{ age = value; }

	public String getUserName()
	{ return username; }

	public String getEmail()
	{return email; }

	public int getAge()
	{ return age; }
}
