// TableControllerForLwc.cls
public class TableControllerForLwc {
    
    @AuraEnabled
    public static Id createRecord() {
        // Create a new record here, for example, an Account
        Account newAccount = new Account(Name = 'New Account');
        insert newAccount;
        return newAccount.Id;
    }

    @AuraEnabled
    public static void deleteRecord(Id recordId) {
        // Delete the record with the given ID
        delete new Account(Id = recordId);
    }
}