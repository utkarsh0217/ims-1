import { LightningElement,track,wire } from 'lwc';
import getcontact from '@salesforce/apex/lwccontroller.getcontact';
const columns = [
    {label:'First Name',fieldName:'FirstName'},
    {label:'Last Name',fieldName:'LastName'},
    {label:'Contact Email',fieldName:'Email'},
    {label:'Contact Phone No.',fieldName:'Phone'}];
export default class Datatableforvfpage extends LightningElement {

@track data=[];
@track columns=columns;
error;

@wire(getcontact)
contacts({ data, error }) {
if (data) {
    this.data = data;
    this.error = undefined;
} 
else if (error) {
    this.data = undefined;
    this.error = error;
}
}




}