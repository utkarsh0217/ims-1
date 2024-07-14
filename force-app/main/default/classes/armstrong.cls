//WAP to check if a number is palindrome or not ?

/*public class other 
{
    public void oth()
    {
        integer num=122,rev=0,rem;
        integer count=num;
        while(count!=0) 
        {
        rem=math.mod(count,10);
        rev=rev*10+rem;
        count=count/10;
        }
        if(num==rev)
        {
            system.debug(num+ ' is a palindrome number');
        }
        else
        {
            system.debug(num+' is not a palindrome number');
        }
    }
}*/

// WAP to print palindrome numbers between 1 to 100 


/*public class palind
{
    public void pali()
    {
      integer i,rem,rev=0,count;
      for(i=1;i<=200;i++)
      { 
      rev=0;
      for(count=i;count!=0;)
      {
      rem=math.mod(count,10);
      rev=rev*10+rem;
      count=count/10;
      }
          if(i==rev)
          {
              system.debug(i);
          }
      }
         
    }
}*/

// WAP to find sum of numbers from 1 to 100

/*public class sums
{
   public void sum()
   {
       integer i,sum=0,a;
       for(i=1;i<=100;i++)
       {
           a=i;
           sum=sum+a;
       }
       system.debug('sum of series 1 to 100 is = '+sum);
   }
}*/

// WAP to print all even and all odd numbers between 1 to 100 


/*public class news
{
     public void mur()
     {
         integer i;
         for(i=1;i<=100;i++)
         {
             if(math.mod(i,2)==0)
             {
                 system.debug('even number = '+i);
             }
             else 
             {
                 system.debug('odd number = '+i);
             }
         }
     }
}*/

// WAP to check armstrong number 

public class armstrong
{
    public void arm()
    {
        integer num=406,t,rem,count,rev,len=0,multi,arm=0,i;
        for(t=num;t!=0;)
        {
            t=t/10;
            len=len+1;
        }
        for(count=num;count!=0;)
        {
        rev=0;
        rem=math.mod(count,10);
        rev=rev*10+rem;
        multi=1;
        for(i=1;i<=len;i++)
        {            
            multi=multi*rev;
        }
            arm=arm+multi;
        
            count=count/10;
        }
        if(arm==num)
        {
            system.debug(num + '  is a armstrong number');
        }
        else
        {
            system.debug(num + '  is not a armstrong number');
        }
    }
}