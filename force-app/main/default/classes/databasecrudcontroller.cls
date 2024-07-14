public with sharing class databasecrudcontroller {
    @AuraEnabled(Cacheable=true)
    public static List<Account> getaccount(){
        List<Account> accList =[SELECT Id,Name,Phone,Website FROM Account];
        if(!accList.isEmpty()){
            system.debug('your contact recieved sussessfully:'+ accList);
            return accList;
         }
        return Null;
    }
}