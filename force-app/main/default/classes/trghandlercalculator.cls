public class trghandlercalculator 
    {
        public static void trgcalmethod(list <calculator__c> calc)
        {
            for(calculator__c obj : calc)
            {
                if(obj.Loan_amount__c !=null)
                {
                    obj.interest__c = obj.interest__c + 5;
                    obj.Loan_term__c = obj.Loan_term__c + 5;
                }
                
               
            }
        }
    }