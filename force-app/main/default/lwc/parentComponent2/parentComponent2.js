import { LightningElement } from 'lwc';
export default class ParentComponent2 extends LightningElement {
handleClick(){

this.template.querySelector("c-child-component2").changeValue( );
}
}