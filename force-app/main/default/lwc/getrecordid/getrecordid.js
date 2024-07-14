import { LightningElement, api} from 'lwc';

export default class Getrecordid extends LightningElement {
    @api recordId; // Automatically populated with the current record's Id
   
}