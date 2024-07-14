public class firstcontroller {
     
    public string fname{set;get;}
    public string pname{set;get;}
    public string email{set;get;}
 

        public firstcontroller()
    {
        
    }
    public void saverecord()
    {
        Enquiry_Form__c a = new Enquiry_Form__c();
        a.First_Name__c= fname;
        a.Parent_name__c=pname;
        a.Email_id__c=email;
        a.Date_of_enquiry__c=system.today();
        a.Contact_No__c= '9981345888';
        insert a;
}
}