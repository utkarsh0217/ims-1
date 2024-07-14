public class MapDemoFile {
    public static void method1() {
        // Create a Map<ID, Set<String>>
        Map<Id, Set<String>> m = new Map<Id, Set<String>>();
        
        // Add elements to the map
        Id key1 = '001xx000003ABC1';
        Set<String> value1 = new Set<String>{'Apple', 'Banana', 'Cherry'};
            m.put(key1, value1);
        
        Id key2 = '001xx000003ABC2';
        Set<String> value2 = new Set<String>{'Orange', 'Grapes', 'Pineapple'};
            m.put(key2, value2);
        system.debug(m);
        
        // Access and print values from the map
        for (Id key : m.keySet()) {
            Set<String> values = m.get(key);
            System.debug('ID: ' + key);
            System.debug('Values: ' + values);
        }
    }
    public static void method2(){
        Map<Integer, String> m1 = new Map<Integer, String>();
        m1.put(1, 'First item');
        m1.put(2, 'Second item');
        Map<Integer, String> m2 = new Map<Integer, String>(m1);
        // The map elements of m2 are copied from m1
        System.debug(m2);
    }
    public static void method3() {
        List<Account> ls = [select Id,Name from Account];
        system.debug(ls);
        Map<Id, Account> m = new Map<Id, Account>(ls);
        system.debug(m);
    }
    
    public static void method4() {
        Account a = new Account(Name='Acme',BillingCity='New York');
        
        Map<Integer, Account> map1 = new Map<Integer, Account>();
        map1.put(1, a);
        
        Map<Integer, Account> map2 = map1.clone();
        map1.get(1).BillingCity = 
            'San Francisco';
        
        System.assertEquals(
            'San Francisco',
            map1.get(1).BillingCity);
        
        System.assertEquals(
            'San Francisco',
            map2.get(1).BillingCity);
    }
    public static void method5() {
        Map<String, String> colorCodes = new Map<String, String>();
        
        colorCodes.put('Red', 'FF0000');
        colorCodes.put('Blue','');
        
        Boolean contains = colorCodes.containsKey('Blue');
        system.debug(contains);
        System.assertEquals(true, contains);
    }
   
    public static void method6() {
        Map<String, Integer> myMap = new Map<String, Integer>();
        myMap.put('key1', 100);
        myMap.put('key2', 200);
        
        System.debug('Map before removal: ' + myMap);
        
        // Remove a key from the map
    
        myMap.remove('key1');
        
        System.debug('Map after removal: ' + myMap);
        
    }
    public static void method7(){
        
        list<account>acclist=[select id,name from account];
        system.debug(acclist);
        
        AggregateResult acclist1=[select sum(annualrevenue)result from account];
        system.debug(acclist1);
        
    }
}