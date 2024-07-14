public class covid {
    string report;
    public void covi(){
        report='positive';
        if(report=='positive')
        {
            system.debug('you are quarentined for 15 days since your covid report is = '+report);
        }
        else
        {
            system.debug('no need of quarentine');
        }
    }
}