trigger trgsicicalculator on calculator__c (before insert,before update,before delete, after delete, after insert, after update) 
{
    if(trigger.IsInsert && trigger.IsBefore)
    {
        trghandlercalculator.trgcalmethod(trigger.new);
    }

}