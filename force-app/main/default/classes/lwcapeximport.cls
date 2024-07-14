public with sharing class lwcapeximport {
     @AuraEnabled(cacheable=true)
    public static list<Account> acclistmethod(){
        return[SELECT Id, Name, Type, Phone, Industry FROM Account];
    }

}