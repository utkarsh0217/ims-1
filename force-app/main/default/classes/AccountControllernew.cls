public with sharing class AccountControllernew {

    // Method to retrieve accounts
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Description FROM Account];
    }

    // Method to update an account ====---
    @AuraEnabled
    public static void updateAccount(Id recordId, String newName, String newDescription) {
        Account recordToUpdate = new Account(
            Id = recordId,
            Name = newName,
            Description = newDescription
        );
        update recordToUpdate;
    }

    // Method to delete accounts ----
    @AuraEnabled
    public static void deleteAccounts(List<Id> recordIds) {
        List<Account> recordsToDelete = new List<Account>();
        for (Id recordId : recordIds) {
            recordsToDelete.add(new Account(Id = recordId));
        }
        delete recordsToDelete;
    }
}