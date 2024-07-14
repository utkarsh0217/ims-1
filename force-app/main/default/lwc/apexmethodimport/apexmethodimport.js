import { LightningElement,wire } from 'lwc';
	
import acclistmethod from '@salesforce/apex/lwcapeximport.acclistmethod';

export default class Apexmethodimport extends LightningElement {
 @wire(acclistmethod) apexmessage;
          handleClick(){
        

    }
}