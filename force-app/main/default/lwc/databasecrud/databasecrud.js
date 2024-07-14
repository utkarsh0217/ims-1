import { LightningElement, wire, track } from 'lwc';
import getaccount from '@salesforce/apex/databasecrudcontroller.getaccount';
//import updateaccountdetails from '@salesforce/apex/databasecrudcontroller.updateaccountdetails';
import { updateRecord } from "lightning/uiRecordApi";
import { deleteRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { refreshApex } from '@salesforce/apex';
import { NavigationMixin } from 'lightning/navigation';
const actions = [
    { label: 'Delete', name: 'Delete' },
    { label: 'view', name: 'view' },
];

const columns = [
    { label: 'Account Name', fieldName: 'Name', editable: true },
    { label: 'Account Phone', fieldName: 'Phone', type: 'Phone', editable: true },
    { label: 'Account Website', fieldName: 'Website', editable: true },
    {
        type: 'action',
        typeAttributes: { rowActions: actions },
    }
];
export default class Databasecrud extends NavigationMixin(LightningElement) {
    columns = columns;
    @track data = [];
    @track draftValues = [];
    record = {};

    /* @wire(getaccount)
     accounts(result){
         if(result.data){
            console.log('data recieved from salesforce'+ JSON.stringify(result.data));
             this.data = result.data;
         }else if(result.error){
             console.error(error);
         }
     }*/
    @wire(getaccount)
    accounts({ data, error }) {
        if (data) {
            this.data = data;
            this.error = undefined;
        } else if (error) {
            this.data = undefined;
            this.error = error;
        }
    }


    handleSave(event) {
        this.draftValues = event.detail.draftValues;
        console.log('--- check draft value--', this.draftValues);

        const inputsItems = this.draftValues.map(draft => ({ fields: { ...draft } }));

        try {
            const promises = inputsItems.map(recordInput => updateRecord(recordInput));

            Promise.all(promises)
                .then(() => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Success',
                            message: 'Records Updated Successfully!!',
                            variant: 'success'
                        })
                    );
                    this.draftValues = [];
                    return refreshApex(this.data);
                })
                .catch(error => {
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error',
                            message: 'An Error Occurred!! ' + error.body.message,
                            variant: 'error'
                        })
                    );
                })
                .finally(() => {
                    this.draftValues = [];

                });
        } catch (error) {
            console.log('--- error--', error);
        }

    }

    handlerowaction(event) {
        const actionname = event.detail.action.name;
        const row = event.detail.row;
        if (actionname == 'view') {
            this[NavigationMixin.Navigate]({
                type: 'standard__recordPage',
                attributes: {
                    recordId: row.Id,
                    objectApiName: 'Account', // objectApiName is optional
                    actionName: 'view'
                }
            });
        }
        else if (actionname == 'Delete') {
            deleteRecord(row.Id)
                .then(result => {
                    const evt = new ShowToastEvent({
                        title: 'Success Message',
                        message: 'Record deleted successfully ',
                        variant: 'success',
                        mode: 'dismissible',
                    });
                    this.dispatchEvent(evt);
                    return refreshApex(this.data);

                }).catch(error => {

                });
        }

    }
    handlecreate() {
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                //recordId: row.Id,
                objectApiName: 'Account', // objectApiName is optional
                actionName: 'new'
            }
        });
    }
    async refresh() {
        await refreshApex(this.data);
    }

}