import { LightningElement, track } from 'lwc';

export default class Marksheet extends LightningElement {
    @track physicsMarks = 0;
    @track chemistryMarks = 0;
    @track mathsMarks = 0;
    @track englishMarks = 0;
    @track hindiMarks = 0;
    @track result = '';
    @track percentage = '';

    handleMarksChange(event) {
        const fieldName = event.target.label;
        this[fieldName.toLowerCase() + 'Marks'] = parseInt(event.target.value);
    }

    calculatepercentage() {
        const totalMarks = this.physicsMarks + this.chemistryMarks + this.mathsMarks + this.englishMarks + this.hindiMarks;
        const percentageValue = (totalMarks / 500) * 100;
        if (percentageValue <= 100) {
            this.percentage = `Percentage is: ${percentageValue}`;
        }
    }

    

    calculateResult() {
            // Calculate the total marks and average
            const totalMarks = this.physicsMarks + this.chemistryMarks + this.mathsMarks + this.englishMarks + this.hindiMarks;
            const average = totalMarks / 5;
            
        
            // Determine the division and subject(s) for improvement
            let division;
            let improvementSubjects = '';
        
            if (average >= 75) {
                division = 'First';
            } else if (average >= 60) {
                division = 'Second';
            } else if (average >= 33) {
                division = 'Third';
            } else {
                division = 'Fail';
            }
        
            if (division === 'Fail') {
                if (this.physicsMarks < 33) {
                    improvementSubjects += 'Physics, ';
                }
                if (this.chemistryMarks < 33) {
                    improvementSubjects += 'Chemistry, ';
                }
                if (this.mathsMarks < 33) {
                    improvementSubjects += 'Maths, ';
                }
                if (this.englishMarks < 33) {
                    improvementSubjects += 'English, ';
                }
                if (this.hindiMarks < 33) {
                    improvementSubjects += 'Hindi, ';
                }
                improvementSubjects = improvementSubjects.substring(0, improvementSubjects.length - 2); // Remove the trailing comma and space
            }
        
            // Construct the result message
            if (division === 'Fail') {
                this.result = `Sorry, you have failed in: ${improvementSubjects}`;
            } else if (improvementSubjects) {
                this.result = `Try again. You need improvement in: ${improvementSubjects}`;
            } else {
                this.result = `Pass with ${division} division`;
            }
        }
        
    }