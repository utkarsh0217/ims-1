public with sharing class listDemoFile {
    public static void listMethods() {
        //list of list of set 
        List<List<Set<Integer>>> listOfListsOfSets = new List<List<Set<Integer>>>();
        
        // Create the first list
        List<Set<Integer>> list1 = new List<Set<Integer>>();
        list1.add(new Set<Integer>{1, 2, 3});
        list1.add(new Set<Integer>{4, 5});
        list1.add(new Set<Integer>{7});
        
        // Create the second list
        List<Set<Integer>> list2 = new List<Set<Integer>>();
        list2.add(new Set<Integer>{10, 20});
        list2.add(new Set<Integer>{30, 40, 50});
        
        // Add the lists to the main list
        listOfListsOfSets.add(list1);
        listOfListsOfSets.add(list2);
        System.debug(listOfListsOfSets);
        
    }
    public static  void listMetho1(){
        List<String> colors = new List<String>{
            'Yellow',
                'Red',
                'Green'};
                    colors.sort();
        
        //try {
        // Perform the assertion
        String v1 = 'Green';
        System.assertEquals(v1, colors.get(0));
        //} catch (System.AssertException e) {
        // Log the assertion failure message to the debug log
        //System.debug('Assertion Failed: ' + e.getMessage());
        //}
        
        //System.assertEquals('Green', colors.get(0));
        //System.assertEquals('Red', colors.get(1));
        //System.assertEquals('Yellow', colors.get(2));
    }
    public static void listMethods2() {
        List<Integer> myList = new Integer[6];
        myList.add(0, 47);
        myList.add(1, 52);
        system.assertEquals(52, myList.get(1));
        system.debug (mylist.get(1));
        
    }
    public static void listMethods3(){
        
        Account a = new Account(Name='Acme', BillingCity='New York');
        
        Account b = new Account();
        Account[] q1 = new Account[]{a,b}; 
            Account[] q2 = q1.clone();
        //system.debug(q1[1].BillingCity);
        q1[0].BillingCity = 'San Francisco';
        System.assertEquals(
            'San Francisco',
            q1[0].BillingCity);
        System.assertEquals(
            'San Francisco', 
            q2[0].BillingCity);
        system.debug(q1);
        system.debug(q2[0].BillingCity);
        
    }
    
    public static void listMethods4(){
        List<String> myStrings = new List<String>{'a', 'b'};
            Boolean result = myStrings.contains('z');
        try {
            // Perform the assertion
            System.assertEquals(false, result, 'Custom message');
        } catch (System.AssertException e) {
            // Log the assertion failure message to the debug log
            System.debug('Assertion Failed: ' + e.getMessage());
        }
        
    }
    
    public static void listMethods5(){
        List<Account> accountList = [SELECT Id, Name FROM Account LIMIT 5];
        
        for(Account acc : accountList) {
            Schema.SObjectType objectType = acc.getSObjectType();
            System.debug('SObject Type: ' + objectType);
        }
        
        
    }
    
    public static void listMethods6(){
        List<String> myStrings = new List<String>{'a', 'b', 'a'};
            Integer result = myStrings.indexOf('a');
        System.assertEquals(0, result);
        system.debug(result);
    }
}