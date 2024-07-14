public class simpleintrest{
    integer principle;
    integer rate;
    integer tenure;
    integer simpleintrest;
    public void si()
    {
        principle=1000;
        rate=2;
        tenure=1;
        simpleintrest=(principle*rate*tenure)/100;
        system.debug('simple intrest= '+simpleintrest);
    }
    

}