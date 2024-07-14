import { LightningElement } from 'lwc';
export default class ParentComponent3 extends LightningElement {
    Name='';
    City='';
    callchild=false;
 
    handleName(event){
        this.Name = event.detail.value;
    }
 
    handleCity(event){
        this.City = event.detail.value;
    }
 
    callChildMethod(){
        this.callchild=true;
        this.template.querySelector('c-child-component3').callFromParent(this.Name, this.City);

       
    }
 
}