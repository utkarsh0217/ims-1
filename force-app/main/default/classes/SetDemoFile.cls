public class SetDemoFile {
    public static void setmethod1(){
        // Define a set to hold lists of sets of Integers
        Set<List<Set<Integer>>> setOfListsOfSets = new Set<List<Set<Integer>>>();
        
        // Create a list of sets of Integers
        List<Set<Integer>> listOfSets1 = new List<Set<Integer>>{
            new Set<Integer>{1, 2, 3},
                new Set<Integer>{4, 5, 6},
                    new Set<Integer>{7, 8, 9}
        };
            
            // Create another list of sets of Integers
            List<Set<Integer>> listOfSets2 = new List<Set<Integer>>{
                new Set<Integer>{10, 11, 12},
                    new Set<Integer>{13, 14, 15},
                        new Set<Integer>{16, 17, 18}
            };
                
                // Add the lists of sets to the set of lists of sets
                setOfListsOfSets.add(listOfSets1);
        setOfListsOfSets.add(listOfSets2);
        
        // Print the set of lists of sets
        System.debug(setOfListsOfSets);
        // Retrieve the list from the set by index
        List<List<Set<Integer>>> retrievedList = new List<List<Set<Integer>>>(setOfListsOfSets);
        List<Set<Integer>> listOfSets3 = retrievedList[1];
        
        // Access the values of listOfSets2
        for (Set<Integer> sets : listOfSets3) {
            for (Integer value : sets) {
                System.debug('Value: ' + value);
            }
        }
        
    }
    
    public static void setmethod2() {
        Set<String> s1 = new Set<String>();
        s1.add('item1');
        s1.add('item2');
        Set<String> s2 = new Set<String>(s1);
        // The set elements in s2 are copied from s1
        System.debug(s2);
    }
    
    public static void setmethod3(){
        Set<String> myString = new Set<String>{'a', 'b', 'c'};
            Boolean result = myString.add('d');
       // System.assertEquals(true, result);
       system.debug(result);
       }
}