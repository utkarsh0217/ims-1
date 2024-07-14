public with sharing class comboboxcontroller {
    @AuraEnabled
    public static List<Account> getaccountforcombobx(){
        
            list <Account>acclist =[select Id,Name from Account];
            if(!acclist.isEmpty()){
             return acclist;  
             }
             return Null;
}
    
    @AuraEnabled
    public static List<Contact> getcontact(string accid){
        list<Contact> conlist=[SELECT AccountId, LastName, FirstName, Id, Phone FROM Contact where AccountId=:accid ];
        if(!conlist.isEmpty()){
             return conlist;
        }
        return Null;
        
       
    }
}