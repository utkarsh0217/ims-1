import {LightningElement, track } from 'lwc';
import createAccount from '@salesforce/apex/RowAddDeleteComponentHandler.createAccount';
import deleteAccount from '@salesforce/apex/RowAddDeleteComponentHandler.deleteAccount';

export default class RowAddDeleteComponent extends LightningElement {
    @track accounts = [];

    /*connectedCallback() {
        // Initialize with one account row
        this.addAccountRow();
    }*/

    addAccountRow() {
        createAccount()
            .then(result => {
                this.accounts = [...this.accounts, result];
            })
            .catch(error => {
                console.error('Error creating account: ', error);
            });
    }

    removeAccountRow(event) {
        const accountId = event.target.dataset.id;
        if (this.accounts.length > 1) {
            deleteAccount({ accountId })
                .then(() => {
                    this.accounts = this.accounts.filter(account => account.Id !== accountId);
                })
                .catch(error => {
                    console.error('Error deleting account: ', error);
                });
        } else {
            alert('Cannot delete the last row');
        }
    }
}