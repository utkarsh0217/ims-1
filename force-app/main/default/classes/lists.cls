public class lists {
    public void lis()
    {
        list <integer> mylist = new list <integer>{15,212,101,105,107,312};
        /*mylist.add(115);
        mylist.add(116);
        mylist.add(103);
        mylist.add(104);
        mylist.add(117);
        mylist.add(0,13);
        mylist.add(1,45);*/
        mylist.remove(1);
        mylist.add(1,212);
        system.debug(mylist);
        
        // for sum of list
        integer sum=0;
        for(integer i:mylist)
        {
            sum=sum+i;
        }
        system.debug('sum of list is = '+ sum);
       
        //for max value of list
        integer maxvalue = mylist[0];
        For (integer i =0;i<mylist.size();i++)
        {
            
            if( mylist[i] > maxvalue)
                maxvalue = mylist[i];             
        }    
         system.debug('the max value is'+maxvalue);
        
        // for min value of list
        integer minvalue = mylist[0];
        For (integer i =0;i<mylist.size();i++)
        {
            
            if( mylist[i] < minvalue)
                minvalue = mylist[i];             
        }    
         system.debug('the min value is'+minvalue);
        
        // for averager of list
        integer average,s=0;
        for(integer i:mylist)
        {            
            s=s+i;
        }
        average=s/mylist.size();
        system.debug('average of list is = '+ average);
        
        // for reverse of list 
        List <integer> reversed = new List<integer>();
        for(Integer i = mylist.size() - 1; i >= 0; i--)
        {
         reversed.add(mylist[i]);
        }
        system.debug('reversed list is = '+reversed);
        
        //for descending list 
        
    }

}