// WAP to find max, min , average , sum of elements in a list?

/*public class list2{
    public void liss()
    {
        integer i,j,k,max,min,sum,average;
        list<integer>mylist=new list<integer>{100,112,102,15,115,312};
            max=mylist[0];
        for(i=1;i<mylist.size();i++)
        {
            if(mylist[i]>max)
            {
               max=mylist[i]; 
            }
        }
        system.debug('maximum value in the list is = ' + max);
        min=mylist[0];
        for(j=1;j<mylist.size();j++)
        {
            if(mylist[j]<min)
            {
                min=mylist[j];
            }
        }
        system.debug('minimum value in the list is = '+ min);
        sum=0;
        for(k=0;k<mylist.size();k++)
        {
            sum=sum+mylist[k];
        }
        system.debug('sum of all elements of list is = ' +sum);
        integer count=0;
        for(integer v:mylist)
        {
            count=count+v;
        }
        system.debug('sum of all elem. in list is = '+ count);
        average=count/mylist.size();
        system.debug('average of all elements in list is = ' + average);   
    }    
    
}*/

// WAP to reverse the list ?

/*public class reverse
{
    public void rev()
    {
        list<integer>mylist1=new list<integer>{100,102,104,106,108,110};
        integer i;
        system.debug('original order of list = '+ mylist1);
        system.debug('reverse order of list = ');
        for(i=mylist1.size()-1;i>=0;i--)
        {
            system.debug(mylist1[i] + '');
        }
    }
}*/

// WAP to sort list elements in descending order?
/*public class descending
{
    public void des()
    {
        list<integer> list2 = new list <integer>{12,45,6,89,58,23};
        integer i,j,count ;
        system.debug('original order of list = '+list2);
        system.debug('descending order of list =');
        for(i=0;i<list2.size();i++)
        {
            for(j=i+1;j<list2.size();j++)
            {
                if(list2[i]<list2[j])
                {
                    count=list2[i];
                    list2[i]=list2[j];
                    list2[j]=count;
                }
                
            }
            system.debug(list2[i]);
        }
    }
}*/

// WAP to merge 2 list in 1 list?

/*public class merges
{
    public void mer()
    {
        list<integer>list1=new list <integer>{10,20,30};
        list<integer>list2=new list <integer>{40,50,60,70,80};
            system.debug('1st list =' + list1);
        system.debug('2nd list =' + list2);
            integer a,b,c,i,j ;
        a=list1.size();
        b=list2.size();
        c=a+b;
        list<integer>list3=new integer[c];
        for(i=0;i<list1.size();i++)
        {
            list3[i]=list1[i];
        }
        for(i=0;i<list2.size();i++)
        {
            list3[a+i]=list2[i];
        }
        system.debug('new merge list = ' +list3);
    }
}*/

//wap to split one list into two different sublist?


/*public class split
{
    public void spl()
    {
        list<integer>list1=new list<integer>{10,20,30,40,50,60,70,80};
            system.debug('original list is = '+list1);
            integer a,b,i;
        a=list1.size();
        b=a/2;
        list<integer>list2=new integer[b];
        list<integer>list3=new integer[b];
        for(i=0;i<list2.size();i++)
        {
            list2[i]=list1[i];
        }
        for(i=0;i<list3.size();i++)
        {
            list3[i]=list1[i+b];
        }
        system.debug('2nd list is = ' +list2);
        system.debug('3rd list is = ' +list3);
    }
}*/

// WAP to find unique element from list?

public class uniques
{
    public void uni()
    {
        list<integer>list1=new list<integer>{1,2,3,4,4,2,1,5,5};
            integer i ,j,count;
        for(i=0;i<list1.size();i++)
        {
            count=0;
            for(j=0;j<list1.size();j++)
            {
               if(list1[i]==list1[j])
               {
                   count++;
               }
            }
            if(count==1)
            {
            system.debug('unique element is = '+ list1[i]);
            }
            }
        
            
    }
}