public class PositionTriggerHandler {
    public static void populateData (list<Position__c> posList){
        for(Position__c pos:posList){
            if(pos.Status__c=='New Position'){
                
                if(pos.Min_Pay__c==null){
                pos.Min_Pay__c= 10000;}
                
                if(pos.Open_Date__c==null){
                pos.Open_Date__c= system.Today();}
                
                     
                if(pos.Max_Pay__c == null){
                 pos.Max_Pay__c= 15000;}        
            }             
         }        
    }
    
    public static void taskCreation(list<Position__c> posList){
        list<Task> tasklist = new list<Task>();
        for(Position__c pos:posList){
           if(pos.Status__c=='New Position'){
           
               Task t = new Task();
               t.WhatId = pos.Id;
               t.OwnerId= UserInfo.getUserid();
               t.Status = 'In Progress';
               t.Subject = 'Email';
               t.Priority='High';
               tasklist.add(t);
           }}
        if(!tasklist.isEmpty()){
            insert tasklist;
        }
        
    }

}