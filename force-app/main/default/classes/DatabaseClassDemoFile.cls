public class DatabaseClassDemoFile {
    public static void insertDatabaseClassMethods () {
        List<Account> accList = new List<Account>();
        Account accObject1 = new Account();
        accObject1.Name = 'Salesforce';
        
        Account accObject2 = new Account();
        accObject2.Name = 'Noob';
        acclist.add(accObject1);
        acclist.add(accObject2);
        
        system.debug('accList: '+accList);
        Database.SaveResult[] insertList = Database.insert(accList, false);
        system.debug('insertlist = '+insertList);
        
        for (Database.SaveResult sr: insertList){
            if(sr.isSuccess()) {
                system.debug('Successfully inserted account with ACCOUNT ID: '+sr.getId());
            }
            else{
                for(Database.Error err : sr.getErrors()) {
                    system.debug(err.getStatusCode() + ':' + err.getMessage());
                    system.debug('Account field that affected this error: '+err.getFields());
                }
            }
        }
    }
    
    // Method to insert records using Database.insert()
    public static void insertAccounts(List<Account> accounts) {
        List<Database.SaveResult> results = Database.insert(accounts, false);
        for (Database.SaveResult result : results) {
            if (result.isSuccess()) {
                System.debug('Account inserted successfully. Id: ' + result.getId());
            } else {
                for (Database.Error error : result.getErrors()) {
                    System.debug('Error inserting account: ' + error.getMessage());
                }
            }
        }
    }
    
    // Method to update records using Database.update()
    public static void updateContacts(List<Contact> contacts) {
        List<Database.SaveResult> results = Database.update(contacts, false);
        for (Database.SaveResult result : results) {
            if (result.isSuccess()) {
                System.debug('Contact updated successfully. Id: ' + result.getId());
            } else {
                for (Database.Error error : result.getErrors()) {
                    System.debug('Error updating contact: ' + error.getMessage());
                }
            }
        }
    }
    
    // Method to execute dynamic SOQL query using Database.query()
    public static void executeDynamicSOQL(String soqlQuery) {
        List<Account> accounts = (List<Account>)Database.query(soqlQuery);
        //The result of the query execution is returned as
        //a List<SObject>, but it is typecasted to List<Account> as the query is expected to return Account records.
        for (Account acc : accounts) {
            System.debug('Account Name: ' + acc.Name);
        }
    }
    
    // Method to execute a batch of records using Database.executeBatch()
    public static void executeBatch() {
        // Database.executeBatch(new MyBatchClass(), 200);
    }
    
    public static void upsertAccounts(List<Account> accounts) {
        List<Database.UpsertResult> results = Database.upsert(accounts, Account.Id, false);
        //The first parameter (accounts) is the list of Account records to upsert.
        //The second parameter (Account.Id) specifies the field to use as the external ID
        // for matching during upsert operations. In this case, it's using the Id field of the Account object.
        for (Database.UpsertResult result : results) {
            if (result.isSuccess()) {
                System.debug('Account upserted successfully. Id: ' + result.getId());
            } else {
                for (Database.Error error : result.getErrors()) {
                    System.debug('Error upserting account: ' + error.getMessage());
                }
            }
        }
    }
    
    public static void deleteAccounts(List<Account> accounts) {
        List<Database.DeleteResult> results = Database.delete(accounts, false);
        for (Database.DeleteResult result : results) {
            if (result.isSuccess()) {
                System.debug('Account deleted successfully.');
            } else {
                for (Database.Error error : result.getErrors()) {
                    System.debug('Error deleting account: ' + error.getMessage());
                }
            }
        }
    }
    
    public static void executeAnonymousApex(String apexCode) {
        // Database.executeAnonymous(apexCode);
    }
    
    /*public static void queryMoreRecords(QueryLocator queryLocator) {
        Database.QueryLocatorIterator iterator = Database.queryMore(queryLocator, 200);
        while (iterator.hasNext()) {
            List<Account> accounts = (List<Account>)iterator.next();
            for (Account acc : accounts) {
                System.debug('Account Name: ' + acc.Name);
            }
        }
    }*/
    
    public static void performDMLWithRollback(List<Account> accounts) {
    Savepoint sp = Database.setSavepoint();
    try {
        Database.insert(accounts, false);
        // Perform more DML operations...
    } catch (Exception e) {
        Database.rollback(sp);
        System.debug('Rollback performed due to exception: ' + e.getMessage());
    }
}

}