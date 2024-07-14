// 1 to 100 print 
/*public class dowhile {
    public void dow()
    {
        integer i=1;
        do
        {
            system.debug(i);
            i++;
        }
        while(i<=100);
    }

} */
// 100 to 1 print 
// 
    /*public class dowhile{
    public void dow()
    {
        integer i=100;
        do
        {
            system.debug(i);
            i--;
        }
        while(i>=1);
    }
    }*/

// factorial(j*=i same as j=j*i)
/*public class factorial{
    public void fact()
    {
    integer i=1,j=1,n=10;
        do
        {
         j*=i;
         i++;
        }
        while(i<=n);
        system.debug(j);
    }
}*/

// square and cubes of single digit numbers=

/*public class singledigit{
    public void sin(){
        integer i=1,s,c;
        do
        {
            s=i*i;
            system.debug('square = '+s);
            c=i*i*i;
            system.debug('cube = '+c);
            i++;
        }
        while(i<10);
    }
}*/

// 1 to 5 and 5 to 1 in single loop;

/*public class singleloop{
    public void sinl()
    {
        integer i=1;
        do
        { 
            if(i<=5)
            {
        system.debug(i);
                }
            else
            {
                system.debug(11-i);
            }
        i++;
        }   
        while(i<=10);
           }
}*/

//reverse five digit number
/*public class reverse{
    public void rev()
    {
       // integer i=1;
        integer n=12345;
        integer rem;
        integer reverse=0;
        do
        {
            rem = math.mod(n,10);
            reverse=reverse*10+rem;
            n=n/10;
           
        }
            while(n!=0);
        system.debug(reverse);
    }
} */

// fibonacci series
/*public class fibonacci{
    public void fib()
    {
        integer i=1,n=20,a=0,b=1,next;
         system.debug('fibonacci series for'+ n + 'terms is = ');
        do
        {
           system.debug(a+',');
            next=a+b;
            a=b;
            b=next;
            i++;
            }
        while(i<=n);
         }
}*/

// prime number//

/*public class primeno{
    public void prime()
    {
        integer i=2,count=0,num=17;
        do
        {
           if(math.mod(num,i)==0)
           { 
               count=count+1;
           }i++;
        }
        while(i<=num-1);
        if(count>0)
        {
            system.debug(num+'is not a prime number');
        }
        else
        {
            system.debug (num+'is a prime number');
        }
    }
}*/

// wap for printing prime numbers between 1 to 100.
/*public class primeno{
    public void pri()
    {
      integer i,j,count;
      for(i=1;i<=100;i++)
      {
         for(j=2;j<=i-1;j++)
         {
             if(math.mod(i,j)==0)
             {
                count=count+1;
             }
         }
          if(count==0)
          {
              system.debug(i);
          }
          else
          {
              count=0;
          }
      }
    }
}*/

//wap for printing  fibonacci series
public class fibona{
    public void fibo()
    {
        integer i=1,a=0,b=1,c;
        system.debug(a+','+b);
        do
        {
            c=a+b;
            system.debug(','+c);
            a=b;
            b=c;
            i++;
        }
        while(i<=15);
    }
}