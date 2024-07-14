import { LightningElement , track,api } from 'lwc';
export default class ChildComponent2 extends LightningElement {
@track value = 100;

@api changeValue(){
   this.value=200;
}
}