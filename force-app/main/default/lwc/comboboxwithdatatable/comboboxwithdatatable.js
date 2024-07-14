import { LightningElement, track} from 'lwc';
import getaccountforcombobx from '@salesforce/apex/comboboxcontroller.getaccountforcombobx';
import getcontact from '@salesforce/apex/comboboxcontroller.getcontact';
const columns=[
    {label:'First Name ',fieldName:'FirstName'},
    {label:'Last Name ',fieldName:'LastName'},
    {label:'Phone',fieldName:'Phone',type:'Phone'}
]



export default class Comboboxwithdatatable extends LightningElement {
@track optionsarray=[];
 @track value='';
 @track cardvisible=false;
 @track data=[];
 @track columns=columns;
 get options(){
    return this.optionsarray;
}

    connectedCallback(){

        getaccountforcombobx()
        .then(response=>{
            console.log('account recieved'+JSON.stringify(response));
            let arr=[];
            for(var i=0;i<response.length;i++){
                arr.push({label : response[i].Name, value:response[i].Id});
            }
            this.optionsarray= arr;

        }).catch(error=>{
            console.error('error '+JSON.stringify(error));
        })
    }

    handleChange(event){
    this.cardvisible=true;
    this.value= event.detail.value;
    
    getcontact({accid:this.value})
    .then(response=>{
        this.data=response;
       console.log('contact recived'+JSON.stringify(this.data));
    }).catch(error=>{
        console.error('error'+JSON.stringify(error));
    })
    

    }


}