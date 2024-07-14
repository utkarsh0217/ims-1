//public class A
/*{
    integer x=10;
    public void fun1()
    {
        
        system.debug('outer class'+ x);
        
    }
    public void fun3()
    {
        system.debug('new class '+ x);
    }
  public class B
  {
      public void fun2()
      {
          system.debug ('inner class');
      }
  }
}*/

public class paramethod
{ 
    integer a=100,b=20;
    public void add()
    {
        system.debug(a+b);
    }
    public integer sub()
    {
        return (a-b);
    }
    public void multi(integer a , integer b)
    {
        system.debug(a*b);
    }
    public integer div(integer a , integer b)
    {
        return a/b;
    }
}