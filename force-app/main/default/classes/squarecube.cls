public class squarecube {
    public void squa(){
        integer num,s,c;
        num=33;
        if(math.mod(num,2)==0)
        {
           c=num*num*num;
        system.debug('since number is even its cube will be = '+c);
    }
        else
        {
            s=num*num;
            system.debug('sice number is odd its square will be = '+s);
        }
    }
}