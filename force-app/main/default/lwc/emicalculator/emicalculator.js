import { LightningElement,track } from 'lwc';

export default class Emicalculator extends LightningElement {
     principal = 2500000;
     rate=8.5;
     time=20;
     totalamount;
     totalintrest;
     emi;
     r;
     t;

    handleChange1(event){
        this.principal = event.detail.value;
        console.log('loan vlaue',this.principal);
    }
    handleChange2(event){
        this.rate = event.detail.value;
        console.log('intrestvalue',this.rate);
    }
    handleChange3(event){
        this.time = event.detail.value;
        console.log('termvalue',this.time);
    }
    handlecalculate(){
        this.r=this.rate;
        this.t=this.time;
          this.r=(this.r/12/100);
          this.t=this.t*12;
          //console.log('rate', this.rate);
          //console.log('rate', this.time);
           this.emi = (this.principal * this.r * Math.pow((1 + this.r), this.t)) / (Math.pow((1 + this.r), this.t) - 1);
          console.log('emi value',this.emi);
           this.emi=Math.round(this.emi);
          // console.log('emi value',emi);
            this.totalamount=this.emi*this.t;
          // console.log('total payable amount',this.totalamount);
           this.totalintrest = this.totalamount-this.principal;
          // console('total intrest',this.totalintrest);
          
    }
}