/*public class sobjectpractice
{
    public void practice()
    {
        account a = new account();
        a.Name='flipkart';
        a.NumberOfEmployees=3000;
        a.BillingCity='indore';
        system.debug(a);
        insert a;
    }

}*/

//generic sobject example =

public class sobjectpractice{
    public void practice()
    {
List<SObject> genericList = new List<SObject>();

Account a = new Account();
a.Name = 'Test Account';

Contact c = new Contact();
c.FirstName = 'John';
c.LastName = 'Doe';

genericList.add(a);
genericList.add(c);

for (sobject obj : genericList)
{
    System.debug(obj);
    system.debug(obj.getSObjectType());
}
       
        
    }
}