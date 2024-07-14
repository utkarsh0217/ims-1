public with sharing class Comboboxwithdatatablecontroller {
    @AuraEnabled(cacheable=true)
    public static List<Account> getaccountforcombobx(){
        
            list <Account>acclist =[select Id,Name from Account];
            if(!acclist.isEmpty()){
             return acclist;  
             }
             return Null;
}}