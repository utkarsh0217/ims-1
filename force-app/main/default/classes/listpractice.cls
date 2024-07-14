/*public class listpractice 
{
     public void listpr()
     {
         list<integer>numbers=new list<integer>();
         numbers.add(4);
         numbers.add(5);
         integer i = numbers.get(0);
         system.debug(i);
         numbers.set(0,1);
         system.debug(numbers);
         numbers.clear();
         system.debug(numbers);
         
     }
}*/

/*public class listpractice
{
    public void listpr()
    {
        integer[] abc=new list <integer>();
        abc.add(4);
        abc.add(5);
        system.debug(abc);
        integer i = abc.get(1);
        system.debug(i);
}
}*/

/*public class listpractice
{
    public void listpr()
    {
        list <integer> abc=new integer[2];
        abc[0]=8;
        abc[1]=9;
        //abc[2]=10;
        system.debug(abc);
        
    }
}*/

/*public class listpractice
{
    public void listpr()
    {
        integer[] abc=new integer[2];
        abc[0]=10;
        abc[1]=11;
        //abc[2]=12;
        system.debug(abc);
        
    }
}*/

/*public class listpractice
{
    public void listpr()
    {
        List<String> colors = new List<String>{'Yellow','Red','Green'};
        system.debug('before sort'+colors);
         colors.sort();
        system.debug('after sort'+colors);}}*/

public class listpractice
{
    public void listpr()
    {
        List<integer> series = new List<integer>{22,11,33};
        system.debug('before sort'+series);
         series.sort();
        system.debug('after sort'+series);
        list<integer>series2=new list<integer>(series);
        system.debug('new copied list is = '+series2);
        series2.remove(1);
        system.debug('after remove in new list = '+series2);
        //series2.set(2,55);
       // series2.set(3,56);
       // system.debug('after add = '+series2);
    }
}