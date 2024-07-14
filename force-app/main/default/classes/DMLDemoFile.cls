public class DMLDemoFile {
    public static void method1(){
        
        Account a = new Account(Name='Acme4');
        a.BillingCity='new york';
        insert a;
        system.debug('a inserted =  '+ a);
        
        Account myAcct = [SELECT Id, Name, BillingCity FROM Account WHERE Id = :a.Id];
        system.debug('account queried' + myAcct +'billing city is '+ myAcct.BillingCity);
        myAcct.BillingCity = 'San Francisco'; 
        
        try {
            update myAcct;
            system.debug('updated  account record = '+myAcct);
        } catch (DmlException e) {
            // Process exception here
            System.debug('Message: '+e.getMessage());
        }
    }
    
    public static void method2(){
        Account[] accts = new List<Account>();
        for(Integer i=0;i<3;i++) {
            Account a = new Account(Name='Acme new' + i, 
                                    BillingCity='San Francisco');
            accts.add(a);
        }
        Account accountToUpdate;
        try {
            insert accts;        
            
            // Update account Acme2.
            accountToUpdate = 
                [SELECT BillingCity FROM Account 
                 WHERE Name='Acme new2' AND BillingCity='San Francisco'
                 LIMIT 1];
            // Update the billing city.
            accountToUpdate.BillingCity = 'New York';
            // Make the update call.
            update accountToUpdate;
        } 
        catch(DmlException e) {
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
        
        // Verify that the billing city was updated to New York.
        Account afterUpdate = 
            [SELECT BillingCity FROM Account WHERE Id=:accountToUpdate.Id];
        System.assertEquals('New York', afterUpdate.BillingCity);
        
    }
    
    public static void method3(){
        try {
            Account acct = new Account(Name='SFDC Account n');
            insert acct;
            system.debug(acct);
            
            // Once the account is inserted, the sObject will be 
            // populated with an ID.
            // Get this ID.
            ID acctID = acct.ID;
            
            // Add a contact to this account.
            Contact con = new Contact(
                FirstName='Joe bhai',
                LastName='Smith bhai',
                Phone='415.555.1214',
                AccountId=acctID);
            insert con;
            system.debug('contact inserted = '+ con);
        } 
        catch(DmlException e) {
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
    }
    
    public static void method4(){
        
        try {
            // Query for the contact, which has been associated with an account.
            Contact queriedContact = [SELECT Id,phone,Account.Name,Account.Industry
                                      FROM Contact 
                                      WHERE FirstName = 'Joe' AND LastName='Smith'
                                      LIMIT 1];
            system.debug(queriedContact);
            // Update the contact's phone number
            queriedContact.Phone = '415.555.1215';
            
            // Update the related account industry
            queriedContact.Account.Industry = 'Technology';
            // 2 alag alag object par dml lagana h  to 2 dml call karna padega chahe related hi  kyu na ho 
            // Make two separate calls 
            // 1. This call is to update the contact's phone.
            update queriedContact;
            // 2. This call is to update the related account's Industry field.
            update queriedContact.Account; 
            system.debug (queriedContact);
        } catch(Exception e) {
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
    }
    
    public static void method5(){
        // Insert new accounts
        List<Account> ls = new List<Account>{
            new Account(name='Acme Inc.bhaiji '),
                new Account(name='Acme bhaiji')
                };                                        
                    insert ls;
        
        // Queries to get the inserted accounts 
        Account masterAcct = [SELECT Id, Name FROM Account WHERE id=:ls[0].id];
        Account mergeAcct = [SELECT Id, Name FROM Account WHERE id=:ls[1].id];
        
        // Add a contact to the account to be merged
        Contact c = new Contact(FirstName='Joe',LastName='Merged');
        c.AccountId = mergeAcct.Id;
        insert c;
        
        try {
            merge masterAcct mergeAcct;
            system.debug(masterAcct);
        } catch (DmlException e) {
            // Process exception
            System.debug('An unexpected error has occurred: ' + e.getMessage()); 
        }
        
        // Once the account is merged with the master account,
        // the related contact should be moved to the master record.
        masterAcct = [SELECT Id, Name, (SELECT FirstName,LastName From Contacts) 
                      FROM Account WHERE Name = 'Acme Inc.bhaiji' LIMIT 1];
         system.debug(masterAcct.contacts[0].LastName);
        System.assert(masterAcct.getSObjects('Contacts').size() > 0);
        System.assertEquals('Joe', masterAcct.getSObjects('Contacts')[0].get('FirstName'));
        System.assertEquals('Merged', masterAcct.contacts[0].LastName);
        system.debug('contact lastname = '+ masterAcct.contacts[0].LastName);
        
        // Verify that the merge record got deleted
        Account[] result = [SELECT Id, Name FROM Account WHERE Id=:mergeAcct.Id];
        System.assertEquals(0, result.size());
    }
    
}