// tableComponent.js
import { LightningElement, track} from 'lwc';
import createRecord from '@salesforce/apex/TableControllerForLwc.createRecord';
import deleteRecord from '@salesforce/apex/TableControllerForLwc.deleteRecord';

export default class TableComponent extends LightningElement {
  @track rows = [];
  isdisable= false;

  addRow() {
    createRecord()
      .then(result => {
        const newRow = { id: result };
        this.rows.push(newRow);
      })
      .catch(error => {
        console.error('Error creating record: ', error);
      });
  }

  deleteRow(event) {
    const recordId = event.target.dataset.recordId;
    deleteRecord({ recordId: recordId })
      .then(() => {
        this.rows = this.rows.filter(row => row.id !== recordId);
      })
      .catch(error => {
        console.error('Error deleting record: ', error);
      });
  }
}