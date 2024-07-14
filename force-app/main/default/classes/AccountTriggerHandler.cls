public class AccountTriggerHandler {
    /*public static void Ratingupdate(list<Account> acclist){
        for(Account acc:acclist){
            if(acc.Industry!=null && acc.Industry=='Media'){
                acc.Rating='Hot';
            }
        }
            
    }*/
    public static void relatedopp(list<Account>acclist){
        list<opportunity> opp = new list<opportunity>();
        list<string> nameofopp = new list<string>{'aditi','ankush','yogita'};
        for(Account acc:acclist){
            for(integer i=0;i<3;i++){
            opportunity o =new opportunity();
            o.AccountId=acc.Id;
            o.Name=nameofopp[i];
            o.StageName='Prospecting';
            o.CloseDate=System.Today();
            opp.add(o);
            }
            
            }
        if(!opp.isEmpty()){
            insert opp;
        }
     }
    
     public static void updatedescription(List<Account>acclist , Map<Id,Account>accOldMap){
         for (Account acc:acclist){
             if(acc.Phone != accOldMap.get(acc.Id).phone){
                 acc.Description='your account has been updated from old value'+ 
                     accOldMap.get(acc.Id).phone + 'to new value '+acc.Phone; 
                 
             }
             
         }
}
    public static void populateRating(list<Account> acclist,Map<Id,Account>accOldMap){
        for(Account acc:acclist){
            if((accOldMap==Null && acc.Industry!=null && acc.Industry=='Media')|| 
               (acc.Industry!=accOldMap.get(acc.Id).Industry&& acc.Industry!=null && acc.Industry=='Media')){
                acc.Rating='Hot';
            }
        }
        
    }
    
    public static void relatedcontactupdate(list<account>acclist,map<Id,account>accOldMap){
        list<contact>conlist=new list<contact>();
       map<id,account>accmap=new map<id,account>();
        for(account acc:acclist){
            if(acc.Phone!=accOldMap.get(acc.id).Phone){
                accmap.put(acc.id,acc);
            }
           }
        list <contact>con=[SELECT Id, AccountId, Name, Phone FROM Contact where AccountId IN:accmap.keyset()];
        for(contact c :con){
            if(accmap.containsKey(c.AccountId)){
                c.Phone=accmap.get(c.AccountId).Phone;
                conlist.add(c);
            }
        }
        if(!conlist.isEmpty()){
            update conlist;
        }
    }
    
    public static void preventdeletion(list<account>acclist){
        for(account acc:acclist){
            if(acc.Active__c=='Yes'){
                acc.Active__c.addError('trigger is active account cannot be deleted ');
            }
        }
            
    }     
     
}