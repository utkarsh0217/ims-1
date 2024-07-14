public with sharing class RowAddDeleteComponentHandler {
    @AuraEnabled
    public static Account createAccount() {
        Account acc = new Account(Name = 'New Account from add row action');
        insert acc;
        return acc;
    }

    @AuraEnabled
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete acc;
    }
}