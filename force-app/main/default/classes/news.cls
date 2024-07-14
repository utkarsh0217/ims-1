/*public class listclass {
    public void lis()
    {
        // Create a list
        List<Integer> ls1 = new List<Integer>();
        // Add two integers to the list
        ls1.add(1);
        ls1.add(2);
        system.debug(ls1);
        
        // Create a list based on an existing one
        List<Integer> ls2 = new List<Integer>(ls1);
        // ls2 elements are copied from ls1
        System.debug(ls2);// DEBUG|(1, 2)
        
        //to copy elements from set
        Set<Integer> s1 = new Set<Integer>();
        s1.add(3);
         s1.add(4);
        // Create a list based on a set
        List<Integer> ls = new List<Integer>(s1);
       // ls elements are copied from s1
        System.debug(ls);// DEBUG|(1, 2)
    }

}*/


// list contains

/*public class con
{
    public void con()
    {
        list<string>mystrings=new list<string>{'a','b','c'};
        boolean res;
        res=mystrings.contains('z');
        system.assertEquals(false,res);
        system.debug(res);
    }
}*/

// addAll(from list)

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        list<integer>list2= new list<integer>();
        list2.addAll(list1);
        system.debug(list2);
    }
}*/

// addAll(from set)

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        set<integer> s1= new set<integer>();
        s1.addAll(list1);
        system.debug(s1);
    }
}*/

// clear()

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
            list1.clear();
            system.debug(list1);
    }
}*/

// clone

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
            list<integer>list2 = new list<integer>{70,80};
                system.debug('before clone =' +list2);
            list2=list1.clone();
        
        system.debug('after clone = '+list2);
    }
}*/


// equals(list2)

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
            list<integer>list2= new list<integer>{10,20,30,40,50,60};
        boolean res;
        res=list1.equals(list2);
        system.debug(res);

        
    }
}*/

// get

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        integer i ;
        i=list1.get(0);
        system.debug(i);
    }
}*/

//indexof(list element)

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        integer res = list1.indexof(60);
        system.debug(res);
    }
}*/

// isEmpty()

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        boolean res;
        res=list1.isEmpty();
        system.debug(res);
    }
}*/

//remove(index)

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        list1.remove(1);
        system.debug(list1);
    }
}*/

//size()

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{10,20,30,40,50,60};
        integer i ;
        i=list1.size();
        system.debug(i);
    }
}*/

//sort()

/*public class addalll
{
    public void addalll()
    {
        list<integer>list1 = new list<integer>{70,58,30,80,50,110};
        list1.sort();
        system.debug(list1);
    }
}*/

// sobject

public class news
{
    public void news()
    {
        list<student__c> studentlist = new list<student__c>();
        system.debug(studentlist);
    }
}