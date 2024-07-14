public class grace {
    public void gra(){
        integer marks,newmark,grace;
        marks=10;
            if(marks<33 && marks>=28)
        {
            grace=33-marks;
            newmark=marks+grace;
            system.debug('you have passed subject with grace = '+grace);
        }
        else{
            system.debug('you have not provided grace');
        }
    }

}