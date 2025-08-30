import { Component, Input, ViewChild } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatDialog } from '@angular/material/dialog';
import { MatInputModule } from '@angular/material/input';
import { MatStepperModule, MatStepper } from '@angular/material/stepper';
import { ActivatedRoute, Router } from '@angular/router';
import { TablerIconsModule } from 'angular-tabler-icons';
import { TestDetail, TestDetailQuestionOption } from '../../../../../models/aptitudetest.model';
import { CommonModule } from '@angular/common';
import { AptitudeTestDialog } from '../aptitudetest-dialog.component';
import { ApplicantAptitudeTestService } from '../../../../../services/api/applicantaptitudetest.service';
import { MatRadioChange, MatRadioModule } from '@angular/material/radio';

@Component({
  selector: 'app-aptitudetest-category',
  imports: [
    MatCardModule,
    TablerIconsModule,
    MatStepperModule,
    MatInputModule,
    MatButtonModule,
    MatRadioModule,
    CommonModule
  ],
  templateUrl: './category.component.html',
})
export class CategoryComponent {

  @Input() categoryData: TestDetail; // Define an input property
  testDetailData?: TestDetail = new TestDetail();
  testTimer: any;
  testCategoryName: string;
  @ViewChild('stepper') stepper!: MatStepper;
  stepperIndex: number;
  testDetailID: any;

  constructor(
    private dialog: MatDialog,
    private applicantAptitudeTestService: ApplicantAptitudeTestService,
  ) { }

  ngOnInit(): void {
 /*   console.log('Category component initialized');*/
    // Initialize any other properties or make API calls here
  }

  ngOnChanges(): void {
   /* console.log('Received data in OnChanges:', this.categoryData);*/
    // Handle the data update logic here
  }

  refresh(dataArg: any): void {   
    this.testCategoryName = dataArg.TestCategory.Name;
    //Get Questions Answer from Server
    this.applicantAptitudeTestService.getAptitudeTestQuestionAnswers(dataArg.ID).subscribe({
      next: (response) => {
        this.testDetailID = response.ID;

        this.stepper.reset();
        this.testDetailData = response;

        this.applicantAptitudeTestService.postTestStatus(this.testDetailID, 'TestDetail', 'InProgress').subscribe({
          next: () => {
            console.log('setting testdetail status before setting timer');        
          },
          error: (error) => {
            console.error('Error updating status:', error);
          },
          complete: () => {
            
          }
        });

        this.testTimerFunction(this.testDetailData.TimeOut);
      },
      error: (err) => {
        console.error('something wrong occurred: ' + err);
      },
      complete: () => {
      }
    });    
  }

  testTimerFunction(minute: any) {
    // let minute = 1;
    let seconds: number = minute * 60;
    let textSec: any = "0";
    let statSec: number = 60;

    const prefix = minute < 10 ? "0" : "";

    const timer = setInterval(() => {
      seconds--;
      if (statSec != 0) statSec--;
      else statSec = 59;

      if (statSec < 10) {
        textSec = "0" + statSec;
      } else textSec = statSec;

      this.testTimer = `${prefix}${Math.floor(seconds / 60)} mins:${textSec} secs`;

      if (seconds == 0) {
        console.log('completing current test category');

        //this.applicantAptitudeTestService.postTestStatus(this.testDetailID, 'TestDetail', 'Completed').subscribe({
        //  next: (response) => {
        //    //this.router.navigate(['/aptitudetest/list']);
        //  },
        //  error: (error) => {
        //    console.error('Error updating status:', error);
        //  }
        //});
        //alert('timer finished submite test now');
        this.submitTestDetail();

        clearInterval(timer);
      }
    }, 1000);
  }

  checkOption($event: MatRadioChange, questionID: number) {
    //console.log($event.source.name, $event.value, questionIdFromRadio);
    console.log('radioChange questionID: ' + questionID + ' optionID: ' + $event.value + ' testDetailID: ' + this.testDetailID);

    this.applicantAptitudeTestService.getCheckQuestionAnswer(this.testDetailID, questionID, $event.value).subscribe({
      next: (response) => {
        console.log('response from getCheckQuestionAnswer: ' + JSON.stringify(response)); 
      },
      error: (err) => {
        console.error('something wrong occurred: ' + err);
      },
      complete: () => {
      }
    });

  }

  submitTestDetail() {
    this.applicantAptitudeTestService.postSubmitTestDetail(this.testDetailID).subscribe({
      next: (response) => {
        //this.router.navigate(['/aptitudetest/list']);
      },
      error: (error) => {
        console.error('Error updating status:', error);
      }
    });
  }

  resetStepper(): void {
    if (this.stepper) {
      this.stepper.reset();
    }
  }
}
