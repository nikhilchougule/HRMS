import {
  Component,
  AfterViewInit,
  ViewChild,
  Signal,
  signal,
} from '@angular/core';
import { AptitudeTestService } from '../../../services/api/aptitudetest.service';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';
import { MaterialModule } from 'src/app/material.module';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TablerIconsModule } from 'angular-tabler-icons';
import { RouterModule } from '@angular/router';
import { AppConfirmDeleteDialogComponent } from './confirm-delete-dialog.component';
import { MatDialog } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { AptitudeTest } from '../../../models/aptitudetest.model';

@Component({
  selector: 'app-aptitudetest-list',
  templateUrl: './aptitudetest-list.component.html',
  imports: [
    MaterialModule,
    CommonModule,
    RouterModule,
    FormsModule,
    ReactiveFormsModule,
    TablerIconsModule,
  ]
})
export class AppAptitudeTestListComponent implements AfterViewInit {
  allComplete = signal<boolean>(false);
  //invoiceList = new MatTableDataSource<AptitudeTest>([]);
  //allInvoices = signal<AptitudeTest[]>([]);

  aptitudeTestList = new MatTableDataSource<AptitudeTest>([]);
  allAptitudeTests = signal<AptitudeTest[]>([]);

  activeTab = signal<string>('All'); 
  searchQuery = signal<string>('');
  displayedColumns: string[] = [
    /*     'chk',*/
    'ID',
    'Test.Name',
    'User.Name',
    'User.UserProfile.Company',
    'User.MobileNumber',
    'Test.CreatedDate',
    /*    'UpdatedDate',*/
    'Test.Status.Name',
    'action',
  ];

  @ViewChild(MatSort) sort: MatSort = Object.create(null);
  @ViewChild(MatPaginator) paginator: MatPaginator = Object.create(null);

  constructor(private aptitudeService: AptitudeTestService, private dialog: MatDialog, private snackBar: MatSnackBar) { }

  ngOnInit(): void {

    //this.aptitudeService.getAllAptitudeTests().subscribe(response => {
    //  this.allAptitudeTests.set(response);
    //  this.aptitudeTestList.data = response;
    //});

    this.aptitudeService.getAllAptitudeTests().subscribe({
      next: (response) => {
        this.allAptitudeTests.set(response);
        this.aptitudeTestList.data = response;
      },
      error: (err) => {
        console.error('something wrong occurred: ' + err);
        this.showSnackbar('Something wrong occured!. Contact HR Team.');
      },
      complete: () => {
      }
    });
    
  }

  ngAfterViewInit(): void {
    this.aptitudeTestList.paginator = this.paginator;
    this.aptitudeTestList.sort = this.sort;
  }

  handleTabClick(tab: string): void {
    this.activeTab.set(tab);
    this.filterAptitudeTests(); // Filter when tab is clicked
  }

  filter(filterValue: string): void {
    this.searchQuery.set(filterValue);
    this.filterAptitudeTests();
  }

  filterAptitudeTests(): void {
    const currentTab = this.activeTab();
    const filteredInvoices = this.allAptitudeTests().filter((aptitudeTest) => {
      const matchesTab = currentTab === 'All' || aptitudeTest.Test.Status.Name === currentTab;

      // Search filtering
      const matchesSearch =
        aptitudeTest.Test.Name
          .toLowerCase()
          .includes(this.searchQuery().toLowerCase()) ||
        aptitudeTest.User.Name
          .toLowerCase()
          .includes(this.searchQuery().toLowerCase()) ||
        //aptitudeTest.User.UserProfile?.Company!
        //  .toLowerCase()
        //  .includes(this.searchQuery().toLowerCase())
      aptitudeTest.User.MobileNumber
        .toLowerCase()
        .includes(this.searchQuery().toLowerCase())
      aptitudeTest.Test.Status.Name
        .toLowerCase()
        .includes(this.searchQuery().toLowerCase());

      return matchesTab && matchesSearch; // Return true if both conditions are met
    });

    this.aptitudeTestList.data = filteredInvoices; // Update the data source
    this.updateAllComplete();
  }

  updateAllComplete(): void {
    const allInvoices = this.aptitudeTestList.data;
    this.allComplete.set(
      allInvoices.length > 0 && allInvoices.every((t) => t.Test.Status.Name)
    ); // Update the allComplete signal
  }

  someComplete(): boolean {
    return (
      this.aptitudeTestList.data.filter((t) => t.completed).length > 0 &&
      !this.allComplete()
    );
  }

  setAll(completed: boolean): void {
    this.allComplete.set(completed);
    this.aptitudeTestList.data.forEach((t) => (t.completed = completed));
    this.aptitudeTestList._updateChangeSubscription();
  }

  countAptitudeTestsByStatus(status: string): number {
    return this.allAptitudeTests().filter((aptitudeTest) => aptitudeTest.Test.Status.Name === status)
      .length;
  }

  deleteAptitudeTest(id: number): void {
    const dialogRef = this.dialog.open(AppConfirmDeleteDialogComponent);

    dialogRef.afterClosed().subscribe((result: any) => {
      if (result) {
        this.aptitudeService.deleteAptitudeTest(id).subscribe({
          next: (x) => {
            console.log('got value in next' + x);
            console.log('in next add aptitude test post result' + JSON.stringify(x));
          },
          error: (err) => {
            console.error('something wrong occurred: ' + err);
            this.showSnackbar('Something wrong occured!. Contact HR Team.');
          },
          complete: () => {
            console.log('done');

            this.aptitudeService.getAllAptitudeTests().subscribe({
              next: (response) => {
                this.allAptitudeTests.set(response);
                this.aptitudeTestList.data = response;
              },
              error: (err) => {
                console.error('something wrong occurred: ' + err);
                this.showSnackbar('Something wrong occured!. Contact HR Team.');
              },
              complete: () => {
                this.filterAptitudeTests();
                this.showSnackbar('Aptitude Test deleted successfully!');
              }             
            });
            
          },
        });

       
      }
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
