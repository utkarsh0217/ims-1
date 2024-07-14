import { LightningElement, api } from 'lwc';
export default class ChildComponent3 extends LightningElement {
    Name='';
    City='';
 
    @api callFromParent(paremt1, paremt2){
        this.Name = paremt1;
        this.City = paremt2;
    }
}