public virtual class admin 
{
    integer aid ;
    string name;
    public virtual void workinghours()
    {
        system.debug('9 hours');
    }
    public void accept(integer aid ,string name)
    {
        this.aid=aid;
        this.name=name;
    }
    public void display()
    {
        system.debug('id is= ' + aid + 'name is ='+ name );
    }

}