/*
application name = scs 
created date = 14/1/2024
author= utkarsh murera
last modified on = 14/07/2024



*/



public with sharing class AccountHelper {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name, Type, Rating,
                Phone, Website, AnnualRevenue
            FROM Account];
    }
}