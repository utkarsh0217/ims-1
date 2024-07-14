public class ContactTriggerHandler {
    public static void rollupsummary(list<contact>conlist){
        list<account>acclist=new list<account>();
        set<id>setids=new set<id>();
        for(contact con:conlist){
            if(con.AccountId!=null){
                setids.add(con.AccountId);
            }
            list<account>accwithrelatedcon=[SELECT id,Name,(SELECT Id,LastName FROM Contacts) 
                                            FROM Account where id IN :setids];
            for(Account ac:accwithrelatedcon){
                ac.Total_contact_counts__c= ac.Contacts.size();
                acclist.add(ac);
            }
        }
        if(!acclist.isEmpty()){
            update acclist;
        }
        
    }

}