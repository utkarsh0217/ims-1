trigger AccountTrigger on Account (before insert,after insert,before update,after update,before delete) {
    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
               // AccountTriggerHandler.Ratingupdate(Trigger.new);
                AccountTriggerHandler.populateRating(Trigger.new,null);
        }
    
        else if(Trigger.isAfter){
                AccountTriggerHandler.relatedopp(Trigger.new);
        }
     }
    
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
                AccountTriggerHandler.updatedescription(Trigger.new , Trigger.oldMap);
                  AccountTriggerHandler.populateRating(Trigger.new,Trigger.oldMap);
        }
        else if(Trigger.isAfter){
                AccountTriggerHandler.relatedcontactupdate(Trigger.new , Trigger.oldMap);
                 
        }
     }
    if(Trigger.isDelete){
        if(Trigger.isBefore){
                AccountTriggerHandler.preventdeletion(Trigger.old);
        }
    }
}