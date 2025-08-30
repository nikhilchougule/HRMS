import { Component, signal } from '@angular/core';
import {
  UntypedFormGroup,
  UntypedFormBuilder,
  Validators,
  UntypedFormArray,
  FormsModule,
  ReactiveFormsModule,
  FormControl,
} from '@angular/forms';
import { AptitudeTestService } from '../../../services/api/aptitudetest.service';
import { Router, RouterModule } from '@angular/router';
import { MatDialog } from '@angular/material/dialog';
import { AddedDialogComponent } from './added-dialog/added-dialog.component';
import { MaterialModule } from 'src/app/material.module';
import { CommonModule } from '@angular/common';
import { TablerIconsModule } from 'angular-tabler-icons';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Observable } from 'rxjs/internal/Observable';
import { map, startWith } from 'rxjs/operators';
import { User } from '../../../models/user.model';
import { UserService } from '../../../services/api/user.service';
import { AptitudeTest, Test, TestCategory, TestDetail, TestResult } from '../../../models/aptitudetest.model';
import { SelectListService } from '../../../services/api/selectlist.service';

@Component({
  selector: 'app-aptitudetest-add',
  templateUrl: './add-aptitudetest.component.html',
  imports: [
    MaterialModule,
    CommonModule,
    RouterModule,
    FormsModule,
    ReactiveFormsModule,
    TablerIconsModule,
  ]
})
export class AddAptitudeTestComponent {
  addForm: UntypedFormGroup | any;
  rows: UntypedFormArray;
  testDetail = signal<TestDetail[] | any>([]);
  totalTestTime = signal(0);
  totalTestQuestions = signal(0);

  //autocomplete
  testName = new FormControl('');
  applicantName = new FormControl('');
  applicantOption: User[] = [];
  filteredApplicantOptions: Observable<User[]>;

  testCategoryName = new FormControl('');
  testCategoryOption: TestCategory[] = [];
  filteredTestCategoryOptions: Observable<TestCategory[]>;
  //autocomplete

  constructor(
    private fb: UntypedFormBuilder,
    private aptitudeTestService: AptitudeTestService,
    private router: Router,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private userService: UserService,
    private selectListService: SelectListService
  ) {

    //autocomplete applicants
    this.selectListService.getAllTestCategories().subscribe(res => {
      this.testCategoryOption = res;
      this.filteredTestCategoryOptions = this.testCategoryName.valueChanges.pipe(
        startWith(''),
        map((value) => this._filterTestCategories(value || ''))
      );
    });

    this.userService.getAllApplicants().subscribe(res => {
      console.log('applicants from server' + JSON.stringify(res));
      this.applicantOption = res;
      this.filteredApplicantOptions = this.applicantName.valueChanges.pipe(
        startWith(''),
        map((value) => this._filterApplicants(value || ''))
      );
    });
    //autocomplete

    this.addForm = this.fb.group({});

    this.rows = this.fb.array([]);
    this.addForm.addControl('rows', this.rows);
    this.rows.push(this.createItemFormGroup());
  }

  //autocomplete applicants
  private _filterApplicants(value: string): User[] {
    const filterValue = value.toLowerCase();
    return this.applicantOption.filter((option) =>
      option.Name.toLowerCase().includes(filterValue)
    );
  }

  private _filterTestCategories(value: string): TestCategory[] {
    const filterValue = value.toLowerCase();
    return this.testCategoryOption.filter((option) =>
      option.Name.toLowerCase().includes(filterValue)
    );
  }
  //autocomplete end

  onAddRow(): void {
    this.rows.push(this.createItemFormGroup());
  }

  onRemoveRow(rowIndex: number): void {
    const timeOutItem = this.addForm.get('rows')?.value[rowIndex].timeOut;
    const questionCountItme = this.addForm.get('rows')?.value[rowIndex].questionsCount;

    this.totalTestTime.update((value) => value - timeOutItem);
    this.totalTestQuestions.update((value) => value - questionCountItme);

    this.rows.removeAt(rowIndex);
  }

  createItemFormGroup(): UntypedFormGroup {
    return this.fb.group({
      //firstControl: ['', Validators.required],
      //applicantName: ['', Validators.required],
      testCategoryName: ['', Validators.required],
      timeOut: ['', Validators.required],
      questionsCount: ['', Validators.required],
    });
  }

  itemsChanged(): void {
    let timeOutTotal: number = 0;
    let questionsCountTotal: number = 0;

    // tslint:disable-next-line - Disables all
    for (
      let t = 0;
      t < (<UntypedFormArray>this.addForm.get('rows')).length;
      t++
    ) {
      if (
        this.addForm.get('rows')?.value[t].timeOut !== '' &&
        this.addForm.get('rows')?.value[t].questionsCount
      ) {
        timeOutTotal = this.addForm.get('rows')?.value[t].timeOut + timeOutTotal;
        questionsCountTotal = this.addForm.get('rows')?.value[t].questionsCount + questionsCountTotal;
      }
    }

    this.totalTestTime.set(timeOutTotal);
    this.totalTestQuestions.set(questionsCountTotal);
  }

  saveDetail(event: Event): void {
    event.preventDefault();

    //Perform Validations here
    console.log('applicantName ' + this.applicantName.value);

    if (this.applicantName.value === '' || this.applicantName === undefined) {
      this.showSnackbar('Please select Applicant!');
      return;
    }

    if (this.testName.value === '' || this.testName === undefined) {
      this.showSnackbar('Please enter Test Name!');
      return;
    }

    //pickup created by id from application storage
    const aptitudeTest: Test = new Test();
    aptitudeTest.ApplicantName = this.applicantName.value!;
    aptitudeTest.Name = this.testName.value!;
    aptitudeTest.CreatedDate = new Date('2025-03-10T22:11:38.58');
    aptitudeTest.UpdatedDate = new Date('2025-03-10T22:11:38.58');

    aptitudeTest.TestDetail = [];

    // tslint:disable-next-line - Disables all
    for (
      let t = 0;
      t < (<UntypedFormArray>this.addForm.get('rows')).length;
      t++
    ) {
      this.addForm.get('rows')?.value[t].testCategoryName

      //Perform validations on each row
      if (this.addForm.get('rows')?.value[t].testCategoryName === '' || this.addForm.get('rows')?.value[t].testCategoryName === undefined) {
        this.showSnackbar('Something wrong !. Please review your Test Category and its Questions and Timeout. !');
        return;
      }

      let testDetail = new TestDetail();
      let testResult = new TestResult();
      testResult.Name = 'Static Result';
      testDetail.TestResult = testResult;

      let testCategory = new TestCategory();
      testCategory.Name = this.addForm.get('rows')?.value[t].testCategoryName;
      testDetail.TestCategory = testCategory;

      //testDetail.TestCategory.Name = this.addForm.get('rows')?.value[t].testCategoryName;
      testDetail.TimeOut = this.addForm.get('rows')?.value[t].timeOut;
      testDetail.QuestionsCount = this.addForm.get('rows')?.value[t].questionsCount;

      //let testDetailQuestionOption = [];
      testDetail.TestDetailQuestionOption = [];

      aptitudeTest.TestDetail.push(testDetail);

      //this.invoice()?.orders.push(o);     
    }

    //this.dialog.open(AddedDialogComponent);
    this.aptitudeTestService.addAptitudeTest(aptitudeTest).subscribe({
      next: (x) => {
      },
      error: (err) => {
        this.showSnackbar('Something wrong occured!. Contact HR Team.');
      },
      complete: () => {
        this.router.navigate(['/aptitudetest/list']);
        this.showSnackbar('Aptitude Test added successfully!');
      },
    });
  }

  showSnackbar(message: string): void {
    this.snackBar.open(message, 'Close', {
      duration: 3000,
      horizontalPosition: 'center',
      verticalPosition: 'top',
    });
  }
}
