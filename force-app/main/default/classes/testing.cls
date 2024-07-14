/*public class testing {
    public void practice()
    {
        // Create a new Account record
Account acct = new Account();
acct.Name = 'yadav';
acct.Industry = 'Technology';
acct.Phone = '555-1234';

// Insert the Account record into the database
Database.SaveResult sr = Database.insert(acct, false);

// Print the result of the insert operation
System.debug('Insert result: ' + sr);

// Get the ID of the newly inserted record
Id accountId = acct.Id;
System.debug('Inserted Account ID: ' + accountId);

// Query the newly inserted record from the database
Account queriedAcct = [SELECT Id, Name, Industry, Phone FROM Account WHERE Id = :accountId];

// Print the queried record's field values
System.debug('Queried Account Name: ' + queriedAcct.Name);
System.debug('Queried Account Industry: ' + queriedAcct.Industry);
System.debug('Queried Account Phone: ' + queriedAcct.Phone);

    }

}*/

public class testing
{
  public void practice()
  {
      // Create a new generic sObject instance
sObject obj = new account();

// Set the object type to Account
obj.put('Name', 'gandhi');
obj.put('Industry', 'Technology');
obj.put('Phone', '555-1234');

// Insert the sObject record into the database
Database.SaveResult sr = Database.insert(obj, false);

// Print the result of the insert operation
System.debug('Insert result: ' + sr);

// Get the ID of the newly inserted record
Id accountId = obj.Id;
System.debug('Inserted Account ID: ' + accountId);

// Query the newly inserted record from the database
sObject queriedObj = [SELECT Id, Name, Industry, Phone FROM Account WHERE Id = :accountId];

// Print the queried record's field values
System.debug('Queried Account Name: ' + queriedObj.get('Name'));
System.debug('Queried Account Industry: ' + queriedObj.get('Industry'));
System.debug('Queried Account Phone: ' + queriedObj.get('Phone'));

}
}