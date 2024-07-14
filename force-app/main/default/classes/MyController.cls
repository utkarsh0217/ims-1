public with sharing class MyController {
    @AuraEnabled(cacheable=true)
    public static String getServerMessage() {
        return 'Hello from the server!';
    }
}