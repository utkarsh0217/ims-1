public class salaryincr
{
    public void sal()
    {
        integer salary ;
        salary=8000;
        if(salary<10000)
        {
            salary = salary+500;
            system.debug('your salary is increased by 500='+ salary);           
        }
        else
        {
            system.debug('your salary is same= '+salary);
        }
    }

}