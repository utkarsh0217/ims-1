//WAP to print prime no. in fibonacci series?

/*public class primefabo 
{
    public void prime()
    {
        integer a=0,b=1,c,i,j,d,count;
        for(i=1;i<=20;i++)
        {
            c=a+b;
            d=c;
            count=0;
                for(j=2;j<=d-1;j++)
                {
                    if(math.mod(d,j)==0)
                    {
                        count=count+1;
                    }
                }
                if(count==0)
                {
                    system.debug(d);
                }
            
            a=b;
            b=c;
        }
    }

}*/

// WAP to print square and cube of all non prime elements of one digit?

/*public class nonprimes
{
    public void nons()
    {
        integer i,count,s,j,c;
        for (i=1;i<=9;i++)
        {
         count=0;
         for(j=2;j<=i-1;j++)
         {
             if(math.mod(i, j)==0)
             {
                 count=count+1;
             }
         }
             if(count>0)
             {
                 s=(i*i);
                 c=(i*i*i);
                 system.debug('square of non prime number'+ i +'='+s);
                 system.debug('cube of non prime number '+ i +'='+c);
                 
             }
         }
        }
    }
*/

// WAP to print table from 1 to 10?

public class tables
{
    public void tab()
    {
        integer i,j,num;
        for(i=2;i<=10;i++)
        {
            for(j=1;j<=10;j++)
            {
                num=i*j;
                system.debug(i + '*' + j +'='+ num);
            }
        }
        
    }
}