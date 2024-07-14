trigger PositionTrigger on Position__c (before insert,after insert) {
    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            PositionTriggerHandler.populateData(Trigger.new);
        }
         if(Trigger.isAfter){
            PositionTriggerHandler.taskCreation(Trigger.new);
        }
    }
    

}