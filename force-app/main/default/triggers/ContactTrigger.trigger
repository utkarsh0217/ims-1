trigger ContactTrigger on Contact (after insert,after delete,after undelete) {
    if(Trigger.isInsert){
        if(Trigger.isAfter){
             ContactTriggerHandler.rollupsummary(Trigger.new);
        }
    }
     if(Trigger.isDelete){
        if(Trigger.isAfter){
             ContactTriggerHandler.rollupsummary(Trigger.old);
        }
    }
     if(Trigger.isUndelete){
        if(Trigger.isAfter){
             ContactTriggerHandler.rollupsummary(Trigger.new);
        }
    }
    
    
   
    

}