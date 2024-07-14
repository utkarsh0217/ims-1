public class calloutclass1 {
    
    @future(callout=true)
    public static void accountretrievemethod(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:namedcred1/services/apexrest/accountacc/');
        req.setHeader('content-type', 'application/json; charset=UTF-8');
        req.setHeader('Accept', 'application/json');
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse response = http.send(req);
        system.debug('response code: '+response.getStatusCode());
        system.debug('response body: '+response.getBody());
    }
    
    @future(callout=true)
    public static void createAccountInTargetOrg() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:namedcred1/services/apexrest/accountacc/');
        req.setHeader('content-type', 'application/json; charset=UTF-8');
        req.setHeader('Accept', 'application/json');
        req.setBody('{ "accountName": "utkarsh from integration 2"}');
        req.setMethod('POST');
        Http http = new Http();
        HttpResponse response = http.send(req);
        system.debug('response code: '+response.getStatusCode());
        system.debug('response body: '+response.getBody());
    }
    
}