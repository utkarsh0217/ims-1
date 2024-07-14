// crudDataTable.js
import { LightningElement, wire, track } from 'lwc';
import { refreshApex } from '@salesforce/apex';
import getAccountList from '@salesforce/apex/AccountControllernew.getAccountList';
import createAccount from '@salesforce/apex/AccountControllernew.createAccount';
import updateAccount from '@salesforce/apex/AccountControllernew.updateAccount';
import deleteAccount from '@salesforce/apex/AccountControllernew.deleteAccount';

const columns = [
    { label: 'Account Name', fieldName: 'Name', type: 'text', editable: true },
    { label: 'Type', fieldName: 'Type', type: 'text', editable: true },
    { label: 'Industry', fieldName: 'Industry', type: 'text', editable: true },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency', editable: true },
    { label: 'Phone', fieldName: 'Phone', type: 'phone', editable: true },
    { label: 'Website', fieldName: 'Website', type: 'url', editable: true },
    {
        label: 'Actions',
        type: 'action',
        typeAttributes: {
            rowActions: [
                { label: 'Edit', name: 'edit' },
                { label: 'Delete', name: 'delete' }
            ]
        }
    }
];

export default class CrudDataTable extends LightningElement {
    @track accList;
    @track error;

    @wire(getAccountList)
    wiredAccounts(result) {
        this.accList = result.data;
        this.error = result.error;
    }

    get columns() {
        return columns;
    }

    handleRowAction(event) {
        const action = event.detail.action;
        const row = JSON.parse(JSON.stringify(event.detail.row));

        switch (action.name) {
            case 'edit':
                // Handle edit operation
                this.editRecord(row);
                break;
            case 'delete':
                this.deleteRecord(row);
                break;
            default:
                // Handle other actions
                break;
        }
    }

    editRecord(record) {
        // Implement edit functionality
        // You can navigate to a record page or open a modal for editing
    }

    deleteRecord(record) {
        deleteAccount({ accountId: record.Id })
            .then(() => {
                // Handle success
                console.log('Record deleted successfully');
                // Refresh the datatable
                return refreshApex(this.accList);
            })
            .catch(error => {
                // Handle error
                console.error('Error deleting record:', error);
            });
    }

    handleCreateRecord(event) {
        // Prevent default form submission
        event.preventDefault();

        // Get input fields values
        const fields = event.detail.fields;

        // Call Apex method to create a new record
        createAccount(fields)
            .then(() => {
                // Handle success
                console.log('Record created successfully');
                // Clear the form fields
                this.template.querySelector('lightning-record-edit-form').reset();
                // Refresh the datatable
                return refreshApex(this.accList);
            })
            .catch(error => {
                // Handle error
                console.error('Error creating record:', error);
            });
    }

    handleSuccess(event) {
        // Handle record creation/update success
        console.log('Record saved with Id:', event.detail.id);
    }

    handleError(event) {
        // Handle record creation/update error
        console.error('Error creating/updating record:', event.detail.message);
    }
}