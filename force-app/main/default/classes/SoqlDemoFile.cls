public class SoqlDemoFile {
    
    public static void method1(){
        list<AggregateResult> acclist  = [SELECT id, AVG(Amount)avg FROM Opportunity GROUP BY Id];
        system.debug(acclist);
        
        list<Account> acclist1 = [SELECT Name FROM Account WHERE Industry = 'media' ORDER BY BillingPostalCode ASC NULLS LAST LIMIT 125];
        system.debug(acclist1);
        
        list<AggregateResult> acclist2=[SELECT LeadSource, COUNT(Name) FROM Lead GROUP BY LeadSource];
        system.debug(acclist2);
        
        list<AggregateResult> acclist3=[SELECT LeadSource, MAX(Amount), MIN(Amount), AVG(Amount)
                                        FROM Opportunity
                                        GROUP BY LeadSource
                                       ];
        system.debug(acclist3);
        
        list<AggregateResult> acclist4=[SELECT StageName, COUNT(Id)
                                        FROM Opportunity
                                        WHERE IsClosed = false
                                        GROUP BY StageName
                                       ];
        system.debug(acclist4);
        
        list<AggregateResult> acclist5=[SELECT LeadSource, COUNT(Id)
                                        FROM Lead
                                        GROUP BY LeadSource
                                        ORDER BY COUNT(Id) ASC
                                        
                                       ];
        system.debug(acclist5);
        
        list<AggregateResult> acclist6=[SELECT Industry, Type, COUNT(Id)id
                                        FROM Account
                                        GROUP BY Industry, Type
                                       ];
        system.debug(acclist6);
        
        list<AggregateResult> acclist7=[SELECT CALENDAR_YEAR(CreatedDate), COUNT(Id)
                                        FROM Account
                                        GROUP BY CALENDAR_YEAR(CreatedDate)
                                        
                                       ];
        system.debug(acclist7);
        
        list<account> acclist8=[SELECT Name, CreatedDate
                                FROM Account
                                ORDER BY CreatedDate DESC
                                
                               ];
        system.debug(acclist8);
        
        list<account> acclist9=[SELECT Name, BillingCity, BillingState
                                FROM Account
                                ORDER BY BillingState ASC, BillingCity ASC
                                
                               ];
        system.debug(acclist9);
        
        list<aggregateresult> acclist10 =[SELECT Industry, COUNT(Id) FROM Account GROUP BY industry having industry = 'Media'];
        system.debug(acclist10);
    }
    
    public static void method2(){
        List<AggregateResult> aggregateResults = [SELECT Industry, COUNT(Id) 
                                                  FROM Account 
                                                  GROUP BY Industry];
        
        for (AggregateResult ar : aggregateResults) {
            String industry = (String) ar.get('Industry');
            Integer count = (Integer) ar.get('expr0'); // expr0 is the alias for COUNT(Id)
            System.debug('Industry: ' + industry + ', Count: ' + count);
        }
        
    }
    
    public static void method3(){
        List<String> industries = new List<String>{'Media', 'Finance', 'Healthcare'};
            
            List<Account> accounts = [SELECT Id, Name, Industry FROM Account WHERE Industry IN :industries];
        for(account acc:accounts){
            
            system.debug('id is = '+acc.Id + 'industry is = '+ acc.Industry);
        }
        
    }
    
    public static void method4(){
        Map<String, Integer> myMap = new Map<String, Integer>();
        myMap.put('A', 1);
        myMap.put('B', 2);
        myMap.put('C', 3);
        
        // Iterate over the Map using a for loop
        for (String key : myMap.keySet()) {
            Integer value = myMap.get(key);
            System.debug('Key: ' + key + ', Value: ' + value);
        }
        
    }
    
}