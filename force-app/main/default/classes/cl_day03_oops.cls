public class cl_day03_oops {
    integer employeeId;
    string employeeName;
    decimal salary;
    static string companyName='XYZ INFOTECH';

    public void setDetails()
    {
        employeeId = 101;
   		employeeName = 'Ankita';
   		salary = 23409;
    }
        
    public void setDetails(integer i,string n,decimal s)
    {
        employeeId = i;
   		employeeName = n;
   		salary = s;
    }    
     public void printDetails(){
        system.debug('=========Employee Details========');
        system.debug('Employee Id : '+employeeId);
        system.debug('Employee Name : '+employeeName);
        system.debug('Employee Salary : '+salary);
        system.debug('Employee Company Name : '+CompanyName);  

}
}