@isTest
public class MyHelloWorldTest {

	static testMethod void test_addHelloWorld()
	{
		Account testAcct1 = new Account();
		Account testAcct2 = new Account(Description = 'Foo');
		Account[] accts = new Account[] {testAcct1, testAcct2};
		MyHelloWorld.addHelloWorld(accts);

		System.assertEquals('Hello World', accts[0].Description);
		System.assertEquals('Hello World', accts[1].Description);
	}

	static testMethod void test_helloWorldAccountTrigger()
	{
		Account testAcct1 = new Account(Name='One');
		Account testAcct2 = new Account(Name='Two', Description = 'Foo');
		Account[] accts = new Account[] { testAcct1, testAcct2 };

		insert accts;

		Account[] acctQuery = [SELECT Description FROM Account WHERE Id = :accts[0].Id OR Id = :accts[1].Id];
		System.assertEquals('Hello World', acctQuery[0].Description);
		System.assertEquals('Hello World', acctQuery[1].Description);

	}

}