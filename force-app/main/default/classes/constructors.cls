// default and parameterised constructors 
/*public class constructors 
{
     public constructors()
{
    system.debug('default constructors');
}
    public constructors(integer a, integer b)
    {
        system.debug('result is '+ (a+b));
    }
}*/

// public and private constructors 
/*public class constructors {
  integer x=5,y=7;
private void fun()
{
    
    system.debug('private'+ (x+y));
}
public void fun1()
{
   this.fun();  // for calling private methods 
    system.debug('public'+  x);
}
}*/

//

public class constructors
{
    integer x,y;
    public constructors()
    {
        x=100;
        y=200;
        system.debug('default constructor'+(x+y));
    }
    public constructors(integer x, integer y )
    {
        this.x=x;
        this.y=y;
        system.debug('result is = '+(x+y));
    }
    public void display()
    {
        system.debug('display result is '+ (x+y));
}
}