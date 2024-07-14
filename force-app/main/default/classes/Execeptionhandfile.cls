public class Execeptionhandfile {
    public static void method1(){
        System.debug('Before Exception');
         try{
            Double result=10/0;
        }
        catch (MathException e) {
            System.debug('Cause: '+e.getCause());
            System.debug('Message: '+e.getMessage());
            System.debug('Line Number: '+e.getLineNumber());
            System.debug('Stack Trace: '+e.getStackTraceString());
            System.debug('Type Name: '+e.getTypeName());
        }
        finally{
            System.debug('In Finally Block');
                }
        System.debug('After Exception');
    }
    
}