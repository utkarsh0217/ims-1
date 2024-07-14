public class areaoftriangle {
    integer a;
    integer b;
    integer c;
    double s;
    double area;
    public void method()
    {
        a=400;
        b=200;
        c=300;
        s=(a+b+c)/2;
        area=math.sqrt(s*(s-a)*(s-b)*(s-c));
        system.debug('area of triangle = '+area);
    }
    

}