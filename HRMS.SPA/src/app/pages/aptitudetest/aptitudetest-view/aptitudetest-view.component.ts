import { Component, signal } from '@angular/core';
import { AptitudeTestService }  from '../../../services/api/aptitudetest.service';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { MaterialModule } from 'src/app/material.module';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TablerIconsModule } from 'angular-tabler-icons';
import { AptitudeTest, Test, TestDetail } from '../../../models/aptitudetest.model';
import { MatTableDataSource } from '@angular/material/table';

@Component({
    selector: 'app-aptitudetest-view',
    templateUrl: './aptitudetest-view.component.html',
    imports: [
        MaterialModule,
        CommonModule,
        RouterLink,
        FormsModule,
        ReactiveFormsModule,
        TablerIconsModule,
    ]
})
export class AppAptitudeTestViewComponent {
  id = signal<number>(0);
  aptitudeTest= signal<Test | null>(null);
  displayedColumns: string[] = ['TestCategory', 'TotalQuestions', 'TimeOut', 'Score', 'TestResult', 'CompletionTime'];
  dataSource = new MatTableDataSource<TestDetail>([]);
  totalTestTime: number = 0;
  totalTestQuestions: number = 0;
  totalTestCompletionTime: number = 0;

  getMinutesBetweenDates(startDate: any, endDate: any): number {
    const start = new Date(startDate);
    const end = new Date(endDate);

    // Check if start and end are valid Date objects
    if (isNaN(start.getTime()) || isNaN(end.getTime())) {
      console.error('Invalid date(s) provided');
      return 0;
    }
    const diff = end.getTime() - start.getTime();

    return Math.floor(diff / 1000 / 60);
  }

  constructor(
    private activatedRouter: ActivatedRoute,
    private aptitudeService: AptitudeTestService
  ) {}

  ngOnInit(): void {
    this.id.set(+this.activatedRouter.snapshot.paramMap.get('id')!);
    this.loadAptitudeTest();
  }

  private loadAptitudeTest(): void {
    const aptitudeTestId = this.id();

    this.aptitudeService.getAptitudeTest(aptitudeTestId).subscribe({
      next: (response) => {
        this.aptitudeTest.set(response || null);

        for (let i = 0; i < response.TestDetail.length; i++) {
          this.totalTestTime += response.TestDetail[i].TimeOut;
          this.totalTestQuestions += response.TestDetail[i].QuestionsCount;
          this.totalTestCompletionTime += this.getMinutesBetweenDates(response.TestDetail[i].StartTime, response.TestDetail[i].EndTime);
        }

      },
      error: (err) => {

      },
      complete: () => {

      },
    });

  }
}
