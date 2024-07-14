// addAll form set 
/*public class setpractice {
    public void sets()
    {
        set<integer> s1 = new set<integer>{10,10,20,25,30,45,45};
        set<integer> s2 = new set<integer>(s1);
            system.debug(s2);
    }

}*/

// addAll from list

/*public class setpractice {
    public void sets()
    {
        list<integer> l1=new list<integer>{10,20,30,40,50,60,70};
        set<integer> s1 = new set<integer>(l1);
            system.debug(s1);
    }

}*/

// containsAll(list to compare)

/*public class setpractice {
    public void sets()
    {
        list<integer> l1=new list<integer>{10,20,30,40,50,60,70};
        set<integer> s1 = new set<integer>{10,20,30,40,50,60,70};
            system.debug(s1.containsAll(l1));
    }

}*/

// remove(set element)

/*public class setpractice {
    public void sets()
    {
        set<integer> s1=new set<integer>{10,20,30,40,50,60,70};
            set<integer> s2=new set<integer>{10,20,30};
           s1.removeAll(s2);
           system.debug(s1.equals(s2));
            system.debug(s1);
    }

}*/

// retainAll(list of elements to retain)

public class setpractice {
    public void sets()
    {
        set<integer> s1=new set<integer>{10,20,30,40,50,60,70};
            set<integer> s2=new set<integer>{10,20,30};
            s1.retainAll(s2);
            system.debug(s1);
    }

}