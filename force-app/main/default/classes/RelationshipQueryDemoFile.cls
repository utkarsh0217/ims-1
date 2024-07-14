public class RelationshipQueryDemoFile {
    
    public static void p2cdemo1(){
        List<Account> accountsWithContacts = [SELECT Name, (SELECT FirstName, LastName FROM Contacts) FROM Account];
        
        // Iterate over each Account
        for (Account acc : accountsWithContacts) {
            System.debug('Account Name: ' + acc.Name);
            
            // Iterate over each related Contact for the current Account
            for (Contact con : acc.Contacts) {
                System.debug('Contact First Name: ' + con.FirstName);
                System.debug('Contact Last Name: ' + con.LastName);
            }
        }
        
    }
    
    public static void p2cdemo2(){
        List<Position__c> positionsWithApplications = [SELECT Id, Name, (SELECT Id, Average_Rating__c FROM Job_Applications__r) FROM Position__c];
        
        // Iterate over each Position record
        for (Position__c pos : positionsWithApplications) {
            System.debug('Position Name: ' + pos.Name);
            
            // Iterate over each related Job Application record for the current Position
            for (Job_Application__c app : pos.Job_Applications__r) {
                System.debug('Application Id: ' + app.Id);
                System.debug('Average Rating: ' + app.Average_Rating__c);
            }
        }
        
    }
    
    public static void c2pdemo3(){
        List<Job_Application__c> jobApplications = [SELECT Id, Average_Rating__c, Position__r.Name, Position__r.Functiona_Area__c FROM Job_Application__c];
        
        for (Job_Application__c app : jobApplications) {
            System.debug('Job Application Id: ' + app.Id);
            System.debug('Average Rating: ' + app.Average_Rating__c);
            System.debug('Position Name: ' + app.Position__r.Name);
            System.debug('Functional Area: ' + app.Position__r.Functiona_Area__c);
        }
        
    }
    
    public static void c2pdemo4(){
        List<Opportunity> opportunitiesWithAccountNames = [SELECT Name, Amount, CloseDate, Account.Name,Account.annualrevenue FROM Opportunity];
        
        // Iterate over each Opportunity record
        for (Opportunity opp : opportunitiesWithAccountNames) {
            // Access fields from the Opportunity record
            String opportunityName = opp.Name;
            Decimal amount = opp.Amount;
            Date closeDate = opp.CloseDate;
            Decimal annualrevenue = opp.Account.annualrevenue;
            // Access the related Account Name
            String accountName = opp.Account.Name;
            
            // Output or work with the retrieved data
            System.debug('Opportunity Name: ' + opportunityName);
            System.debug('Amount: ' + amount);
            System.debug('Close Date: ' + closeDate);
            System.debug('Account Name: ' + accountName);
            System.debug('Account annualrevenue: ' + annualrevenue);
        }
        
    }
    
    public static void multilevelquery (){
        List<Account> accountsWithContactsAndOpportunities = [SELECT Name, 
                                                              (SELECT FirstName, LastName FROM Contacts),
                                                              (SELECT Name, Amount FROM Opportunities)
                                                              FROM Account];
        for (Account acc : accountsWithContactsAndOpportunities) {
            // Access Account fields
            String accountName = acc.Name;
            
            // Access related Contacts
            List<Contact> contacts = acc.Contacts;
            for (Contact con : contacts) {
                // Access Contact fields
                String firstName = con.FirstName;
                String lastName = con.LastName;
                
                // Output or work with Contact data
                System.debug('Contact Name: ' + firstName + ' ' + lastName);
            }
            
            // Access related Opportunities
            List<Opportunity> opportunities = acc.Opportunities;
            for (Opportunity opp : opportunities) {
                // Access Opportunity fields
                String opportunityName = opp.Name;
                Decimal amount = opp.Amount;
                
                // Output or work with Opportunity data
                System.debug('Opportunity Name: ' + opportunityName);
                System.debug('Opportunity Amount: ' + amount);
            }
        }
        
        
    }
    
    public static void grandparenttograndchild(){
        List<Account> accounts = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account];
        
        for (Account acc : accounts) {
            System.debug('Account Name: ' + acc.Name);
            
            List<Contact> contacts = new List<Contact>();
            for (Contact con : acc.Contacts) {
                contacts.add(con);
            }
            
            for (Contact con : contacts) {
                System.debug('Contact Name: ' + con.Name);
                
                List<Opportunity> opportunities = [SELECT Id, Name FROM Opportunity WHERE AccountId = :acc.Id];
                for (Opportunity opp : opportunities) {
                    System.debug('Opportunity Name: ' + opp.Name);
                }
            }
        }
        
    }
        
}