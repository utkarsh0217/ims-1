public with sharing class lwccontroller {
    @AuraEnabled(cacheable=true)
     public static List<Contact> getcontact(){
        list<Contact> conlist=[SELECT LastName,FirstName,Phone,Email FROM Contact];
        if(!conlist.isEmpty()){
             return conlist;
        }
        return Null;

}
}