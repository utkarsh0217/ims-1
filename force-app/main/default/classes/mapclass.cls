public class mapclass {
    public void mapc()
    {
        Map<Integer, String> m1 = new Map<Integer, String>();
         m1.put(1, 'First item');
         m1.put(2, 'Second item');
        Map<Integer, String> m2 = new Map<Integer, String>(m1);
        system.debug(m1.equals(m2));
        system.debug(m2);
    }

}