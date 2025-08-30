import { Component, signal } from '@angular/core';
import { CommonModule, DatePipe } from '@angular/common';
import { ApplicantAptitudeTestService } from '../../../services/api/applicantaptitudetest.service';
import { MatCardModule } from '@angular/material/card';
import { TablerIconsModule } from 'angular-tabler-icons';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatSelectModule } from '@angular/material/select';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatDividerModule } from '@angular/material/divider';
import { Router, RouterModule } from '@angular/router';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { ApplicantAptitudeTest } from '../../../models/aptitudetest.model';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { LocalStorageService } from '../../../services/common/local-storage.service';

@Component({
  selector: 'app-applicant-aptitudetest',
  templateUrl: './aptitudetests.component.html',
  imports: [
    MatCardModule,
    TablerIconsModule,
    MatFormFieldModule,
    MatSelectModule,
    FormsModule,
    ReactiveFormsModule,
    MatDividerModule,
    RouterModule,
    MatIconModule,
    MatInputModule,
    MatButtonModule,
    CommonModule
  ],
  providers: [DatePipe]
})

export class ApplicantAptitudeTestsComponent {
  applicantAptitudeTestsList = signal<ApplicantAptitudeTest[]>([]);
  selectedCategory = signal<string>('All');
  userID: any;
  aptitudeTestsFound: boolean = false;

  constructor(private applicantAptitudeTestService: ApplicantAptitudeTestService, private datePipe: DatePipe, private _localStorageService: LocalStorageService, private router: Router) {

    this.userID = this._localStorageService.getItem('UserID');

    this.applicantAptitudeTestService.getAllApplicantAptitudeTests(this.userID).subscribe({
      next: (response) => {
        this.applicantAptitudeTestsList.set(response);
        if (this.applicantAptitudeTestsList().length > 0) {
          this.aptitudeTestsFound = true;
        }       
      },
      error: (err) => {
        console.error('something wrong occurred: ' + err);
      }
    });
  }

  applyFilter(event: Event): void {
    const filterValue = (event.target as HTMLInputElement).value;
    this.filter(filterValue).subscribe(filteredTests => this.applicantAptitudeTestsList.set(filteredTests));
  }

  filter(v: string): Observable<ApplicantAptitudeTest[]> {
    return this.applicantAptitudeTestService.getAllApplicantAptitudeTests(this.userID).pipe(
      map(tests => tests.filter(
        (x: ApplicantAptitudeTest) => x.Name.toLowerCase().indexOf(v.toLowerCase()) !== -1
      ))
    );
  }

  redirectToApplicantTest(applicantTestID: number) {
    console.log('redirectToApplicantTest: ' + applicantTestID);
    this.applicantAptitudeTestService.setApplicantTestID(applicantTestID);
    this.router.navigate(['/applicant/aptitudetests/start']); 
  }

  ddlChange(ob: any): void {
    const filterValue = ob.value;
    if (filterValue === 'All') {
      this.applicantAptitudeTestService.getAllApplicantAptitudeTests(31).subscribe({
        next: (response) => {
          console.log('return applicant aptitude tests' + JSON.stringify(response));
          this.applicantAptitudeTestsList.set(response);
        },
        error: (err) => {
          console.error('something wrong occurred: ' + err);
        },
        complete: () => {
        }
      });
    } else {
      this.applicantAptitudeTestsList.set(
        this.applicantAptitudeTestsList()
          .filter((test) => test.Name === filterValue)
      );
    }
  }
}
