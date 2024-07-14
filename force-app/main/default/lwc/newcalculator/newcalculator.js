import { LightningElement, track } from 'lwc';

export default class Newcalculator extends LightningElement {
    @track firstnumber;
    @track secondnumber;
    @track resultvalue;
    
    handleonechange(event){
        this.firstnumber=parseInt(event.target.value);
    }
    
    handletwochange(event){
        this.secondnumber=parseInt(event.target.value);
    }
    handleaddition(){
        this.resultvalue=parseInt(this.firstnumber)+parseInt(this.secondnumber);
    }
    handlesustraction(){
        this.resultvalue=parseInt(this.firstnumber)-parseInt(this.secondnumber);
    }
    handlemultiplication(){
        this.resultvalue=parseInt(this.firstnumber)*parseInt(this.secondnumber);
    }
    handledivision(){
        this.resultvalue=parseInt(this.firstnumber)/parseInt(this.secondnumber);
    }
    
}