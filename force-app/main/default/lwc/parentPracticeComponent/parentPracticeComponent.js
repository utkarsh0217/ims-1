import { LightningElement } from 'lwc';
export default class ParentPracticeComponent extends LightningElement {

    newName='';

    handlechange(event){
        this.newName = event.target.value;

    }

}