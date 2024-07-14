import { LightningElement, wire } from 'lwc';
import getServerMessage from '@salesforce/apex/MyController.getServerMessage';

export default class Callapexmethod extends LightningElement {
    @wire(getServerMessage)
    wiredMessage({ error, data }) {
        if (data) {
            // Handle the data
            console.log('Message from server:', data);
        } else if (error) {
            // Handle errors
            console.error('Error fetching server message:', error);
        }
    }
}