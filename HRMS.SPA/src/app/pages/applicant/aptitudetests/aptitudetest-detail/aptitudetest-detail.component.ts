import { Component, Input, signal, ViewChild } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatDialog } from '@angular/material/dialog';
import { MatInputModule } from '@angular/material/input';
import { MatStepperModule, MatStepper } from '@angular/material/stepper';
import { ActivatedRoute, Router } from '@angular/router';
import { TablerIconsModule } from 'angular-tabler-icons';
import { ApplicantAptitudeTestService } from '../../../../services/api/applicantaptitudetest.service';
import { LocalStorageService } from '../../../../services/common/local-storage.service';
import { CategoryComponent } from './category/category.component';
import { interval } from 'rxjs/internal/observable/interval';
import { from } from 'rxjs/internal/observable/from';
import { concatMap } from 'rxjs/internal/operators/concatMap';
import { delay } from 'rxjs/internal/operators/delay';
import { Subscription } from 'rxjs/internal/Subscription';
import { TestDetail } from '../../../../models/aptitudetest.model';
import { AptitudeTestDialog } from './aptitudetest-dialog.component';
import { MatRadioChange, MatRadioModule } from '@angular/material/radio';
import { CommonModule } from '@angular/common';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-aptitudetest-detail',
  templateUrl: './aptitudetest-detail.component.html',
  imports: [
    MatCardModule,
    TablerIconsModule,
    MatStepperModule,
    MatInputModule,
    MatButtonModule,
    /*    CategoryComponent,*/
    MatRadioModule,
    CommonModule
  ],
})
export class ApplicantApptitudeTestDetailComponent {
  //  @ViewChild(CategoryComponent) categoryComponent!: CategoryComponent;
  @ViewChild(CategoryComponent, { static: false }) categoryComponent!: CategoryComponent;
  private timerIntervalId: any;
  private subscription: Subscription | null = null;
  private currentIndex = 0;
  private testTimeoutId: any = null;
  testDetails: TestDetail[];
  testID: number = 0;
  id = signal<any>(null);
  applicantAptitudeTest = signal<any>(null);
  qaPayload = signal<any>(null);
  //applicantAptitudeTestDetail = signal<any>(null);

  @Input() categoryData: TestDetail; // Define an input property
  testDetailData?: TestDetail = new TestDetail();
  testTimer: any;
  testCategoryName: string;
  @ViewChild('stepper') stepper!: MatStepper;
  stepperIndex: number;
  testDetailID: any;
  globalTestCompleted: boolean = false;
  submitButton = true;

  refreshCategory(dataArg: any): void {
    if (this.categoryComponent) {
      this.categoryComponent.refresh(dataArg);
    }
  }

  processTest(): void {
    console.log('In Process Test Current Index: ', this.currentIndex);

    // Clear any previous timeout
    if (this.testTimeoutId) {
      clearTimeout(this.testTimeoutId);
      this.testTimeoutId = null;
    }

    if (this.currentIndex < this.testDetails.length) {
      const currentTest = this.testDetails[this.currentIndex];
      this.testCategoryName = currentTest.TestCategory.Name;
      this.testDetailID = currentTest.ID;

      //Get Questions Answer from Server
      this.applicantAptitudeTestService.getAptitudeTestQuestionAnswers(this.testDetailID).subscribe({
        next: (response) => {
          this.testDetailID = response.ID;

          this.stepper.reset();
          this.submitButton = true;
          this.testDetailData = response;

          this.applicantAptitudeTestService.postTestStatus(this.testDetailID, 'TestDetail', 'InProgress').subscribe({
            next: () => {
              this.testTimerFunction(this.testDetailData?.TimeOut);
            },
            error: (error) => {
              console.error('Error updating status:', error);
            },
            complete: () => {
            }
          });

        },
        error: (err) => {
          console.error('something wrong occurred: ' + err);
        },
        complete: () => {
        }
      });

      this.testTimeoutId = setTimeout(() => {
        if (this.currentIndex < this.testDetails.length - 1) {
          this.submitTestDetail();
        } else if (this.currentIndex === this.testDetails.length - 1) {
          this.globalTestCompleted = true; // Set globalTestCompleted to true when the last test is processed
          this.submitTestDetail();
        }
        // Do not call submitTestDetail if currentIndex >= testDetails.length
      }, currentTest.TimeOut * 60000);
    }
    else {
      //  console.log('All tests processed. from timeout.');
      //  this.submitTestDetail();
      //
    }

  }

  constructor(
    activatedRouter: ActivatedRoute,
    public applicantAptitudeTestService: ApplicantAptitudeTestService,
    private router: Router,
    private dialog: MatDialog,
    private _localStorageService: LocalStorageService,
    private snackBar: MatSnackBar,
  ) {
    //this.id.set(activatedRouter?.snapshot?.paramMap?.get('id'));
    //this.testID = this.id();

    const testID = this.applicantAptitudeTestService.getApplicantTestID(); // Retrieve the ID
    this.testID = testID ?? 0;
    console.log('testID in detail component' + testID);

    if (this.testID) {
      this.applicantAptitudeTestService.getAptitudeTest(this.testID).subscribe({
        next: (response) => {
          this.testDetails = response.TestDetail;

          this.applicantAptitudeTestService.postTestStatus(this.testID, 'Test', 'InProgress').subscribe({
            next: (response) => {
              this.processTest();
            },
            error: (error) => {
              console.error('Error updating status:', error);
            }
          });
        },
        error: (err) => {
          console.error('something wrong occurred: ' + err);
        },
        complete: () => {
        }
      });

    } else {
      //console.error('No applicantTestID found!');
      this.showSnackbar('No Test Found.');
      this.router.navigate(['/aptitudetest/list']); // Redirect if no ID is found
    }
  }

  goBack(): void {
    this.router.navigate(['/apps/applicantAptitudeTests']);
  }

  someAction(dataArg: any): void {
    this.refreshCategory(dataArg); // Refresh the CategoryComponent
  }

  testTimerFunction(minute: any) {
    let seconds: number = minute * 60;
    let textSec: any = "0";
    let statSec: number = 60;

    const prefix = minute < 10 ? "0" : "";

    this.timerIntervalId = setInterval(() => {
      seconds--;
      if (statSec != 0) statSec--;
      else statSec = 59;

      if (statSec < 10) {
        textSec = "0" + statSec;
      } else textSec = statSec;

      this.testTimer = `${prefix}${Math.floor(seconds / 60)} mins:${textSec} secs`;

      if (seconds == 0) {
        clearInterval(this.timerIntervalId);
      }
    }, 1000);
  }

  checkOption($event: MatRadioChange, questionID: number) {
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
    console.log('submitted test button');
    clearInterval(this.timerIntervalId);
    this.timerIntervalId = null;

    // Clear the test timeout to prevent double submission
    if (this.testTimeoutId) {
      clearTimeout(this.testTimeoutId);
      this.testTimeoutId = null;
    }

    this.submitButton = false;

    this.applicantAptitudeTestService.postSubmitTestDetail(this.testDetailID).subscribe({
      next: (response) => {
        if (this.currentIndex < this.testDetails.length - 1) {
          this.showSnackbar('This Test Category is Finished !. We are loading next Test Category. Please wait ....');
          this.currentIndex++;
          this.testCategoryName = 'Loading next Test ...';
          setTimeout(() => {
            clearInterval(this.timerIntervalId);
            this.timerIntervalId = null;
            this.processTest();
          }, 9000);
        }
        else if (this.currentIndex === this.testDetails.length - 1) {
          console.log('in last test');
          // Only set globalTestCompleted here
          const dialogRef = this.dialog.open(AptitudeTestDialog, {
            data: ['We have submited this Test.', 'Thank you for taking time to finish this Test.']
          });
          this.applicantAptitudeTestService.postTestStatus(this.testID, 'Test', 'Completed').subscribe({
            next: (response) => {
              this.globalTestCompleted = true;
              this.applicantAptitudeTestService.clearApplicantTestID();
            },
            error: (error) => {
              console.error('Error updating status:', error);
            },
          });
          dialogRef.afterClosed().subscribe((result: any) => {
            this.router.navigate(['/applicant/aptitudetests']);
          });
        }
      },
      error: (error) => {
        console.error('Error updating status:', error);
      }
    });
  }

  showSnackbar(message: string): void {
    this.snackBar.open(message, 'Close', {
      duration: 9000,
      horizontalPosition: 'center',
      verticalPosition: 'top'
    });
  }

}
