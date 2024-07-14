// set methods 1> add(set element)
/*public class setss {
    public void se()
    {
        Set<String> myString = new Set<String>{'a', 'b', 'c'};
          Boolean result = myString.add('d');
          System.assertEquals(true, result);
        system.debug(mystring);
    }

}*/

// 2> addAll(from list) and addAll(from set)
public class setss {
    public void se()
    {
        Set<String> myString = new Set<String>{'a', 'b','c'};
        Set<String> sString = new Set<String>(myString);
        Boolean result1 = myString.addAll(sString);
        System.assertEquals(true, result1);
        system.debug(sString);
    }

}