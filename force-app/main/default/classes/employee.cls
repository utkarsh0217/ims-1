public class employee extends admin
{
    integer sal;
    public void accept1(integer sal)
    {
        this.sal = sal;
    }
    public void display1()
    {
        system.debug('salary is = '+sal);
    }
    public override void workinghours()
    {
        system.debug('new working hours are 8');
    }
}