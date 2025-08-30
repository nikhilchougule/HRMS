import {
  Component,
  OnInit,
  ViewChild,
  AfterViewInit,
  Inject,
  Input,
  Output, EventEmitter
} from '@angular/core';
import { MatTableDataSource, MatTable } from '@angular/material/table';
import {
  MatDialog,
  MatDialogRef,
  MAT_DIALOG_DATA,
} from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MaterialModule } from 'src/app/material.module';
import { CommonModule } from '@angular/common';
import { TablerIconsModule } from 'angular-tabler-icons';
import { FormControl, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { UserService } from 'src/app/services/api/user.service';
import { User, UserProfile } from 'src/app/models/user.model';
import { ExperienceLevel, Skill } from 'src/app/models/selectlist.model';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Observable, startWith, map } from 'rxjs';
import { SelectListService } from '../../services/api/selectlist.service';
import { MatChipsModule } from '@angular/material/chips';
import { LocalStorageService } from '../../services/common/local-storage.service';
import { ServerAppConfigService } from '../../services/api/server-appconfig.service';

@Component({
  selector: 'app-users-list',
  templateUrl: './users.component.html',
  imports: [MaterialModule, CommonModule, TablerIconsModule],
})
export class UsersComponent implements OnInit, AfterViewInit {
  @ViewChild(MatTable, { static: true }) table: MatTable<any>;
  @ViewChild(MatPaginator, { static: true }) paginator: MatPaginator;
  @Output() toggleProgressBar: EventEmitter<boolean> = new EventEmitter<boolean>();

  userID: number;
  searchText: string = '';
  totalCount = 0;
  administratorCount: number = 0;
  hrCount: number = 0;
  employeeCount: number = 0;
  applicantCount: number = 0;

  displayedColumns: string[] = [
    //'ID',
    'Name',
    //'Email',
    //'MobileNumber',
    'Company',
    'Designation',
    'Skills',
    'Role',
    //'CreatedDate',
    'action',
  ];

  dataSource = new MatTableDataSource<User>([]);

  constructor(private UserService: UserService, public dialog: MatDialog, private selectListService: SelectListService, private _localStorage: LocalStorageService) {
  }

  ngOnInit(): void {
    this.toggleProgressBar.emit(true);
    setTimeout(() => {
      this.toggleProgressBar.emit(false);
    }, 3000);

    this.loadUsers();
  }

  private loadUsers(): void {
    this.userID = this._localStorage.getItem('UserID');
    this.UserService.getAllUsers(this.userID).subscribe({
      next: (response) => {
        console.log('loadedusers');
        this.dataSource.data = response;
      },
      error: (error) => {      
      },
      complete: () => {
        this.updateCounts();
      }
    });
  }

  private updateCounts(): void {
    this.totalCount = this.dataSource.data.length;
    this.administratorCount = this.countUsersByStatus('Administrator');
    this.hrCount = this.countUsersByStatus('HR');
    this.employeeCount = this.countUsersByStatus('Employee');
    this.applicantCount = this.countUsersByStatus('Applicant');
  }

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }

  onKeyup(event: KeyboardEvent): void {
    const input = event.target as HTMLInputElement;
    this.applyFilter(input.value);
  }

  applyFilter(filterValue: string): void {
    console.log('apply filter');
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  btnCategoryClick(val: string): number {
    this.dataSource.filter = val.trim().toLowerCase();
    return this.dataSource.filteredData.length;
  }

  openDialog(action: string, User: User | any): void {
    const dialogRef = this.dialog.open(UserDialogComponent, {
      data: { action, User },
      autoFocus: false,
    });

    dialogRef.afterClosed().subscribe((action: string) => {
      this.UserService.getAllUsers(this.userID).subscribe({
        next: (response) => {
          this.dataSource.data = response;
        },
        error: (error) => {
        },
        complete: () => {
          if (action === 'Update') {
          } else if (action === 'closeDialog') {
          } else if (action === 'Add') {
            this.applyFilter(" ");
          }
          this.updateCounts();
        }
      });
    });
  }

  countUsersByStatus(role: string): number {
    return this.dataSource.data.filter(
      (User) => User.Role.toLowerCase() === role.toLowerCase()
    ).length;
  }
}

@Component({
  // tslint:disable-next-line - Disables all
  selector: 'user-dialog-content',
  templateUrl: 'user-dialog.html',
  imports: [
    MaterialModule,
    CommonModule,
    TablerIconsModule,
    FormsModule,
    ReactiveFormsModule,
    TablerIconsModule,
    MatChipsModule
  ],
})
export class UserDialogComponent implements OnInit {
  action: string;
  local_data: User = new User();
  experienceLevel_data: ExperienceLevel;
  users: any[] = [];
  experienceLevels: any[] = [];
  skills: any[] = [];
  dateControl = new FormControl();
  isChecked = true;
  roleControlAdministrator = new FormControl();
  roleControlHR = new FormControl();
  roleControlEmployee = new FormControl();
  roleControlApplicant = new FormControl();
  tempSkills: string[] = [];
  defaultPassword: any;

  constructor(
    public dialogRef: MatDialogRef<UserDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private UserService: UserService,
    private snackBar: MatSnackBar,
    private selectListService: SelectListService,
    private serverAppConfigService: ServerAppConfigService
  ) {
    this.action = data.action;

    this.serverAppConfigService.getAppConfiguration().subscribe(res => {
      this.defaultPassword = res.DefaultPassword;
    });

    this.skillsControl.valueChanges.subscribe((selectedSkills: Skill[]) => {
      this.local_data.Skills = selectedSkills;
    });

    this.selectListService.getExperienceLevel().subscribe(res => {
      this.experienceLevels = res;
    });

    this.selectListService.getSkills().subscribe(res => {
      this.skills = res;
    });

    if (isObjectEmpty(data.User)) {
      // console.log('data.User is empty');
    }
    else {
      this.skills = data.User.Skills;

      this.local_data = {
        ...data.User
      };

      if (data.User.IsActive === true) {
        this.local_data.IsActive = true;
        this.isActiveControl.setValue(true);
      };

      if (data.User.IsApproved === true) {
        this.local_data.IsApproved = true;
        this.isApprovedControl.setValue(true);
      };

      //handle null condition for skills json object
      Object.keys(JSON.parse(JSON.stringify(data.User.Skills))).forEach(key => {
        this.tempSkills.push(data.User.Skills[key].Name);
      });

      this.skillsControl.setValue(this.tempSkills);
    }
  }

  skillsControl = new FormControl();
  isActiveControl = new FormControl(false);
  isApprovedControl = new FormControl(false);
  experienceLevelControl = new FormControl();

  firstControl = new FormControl('');
  firstoption: string[] = ['One', 'Two', 'Three'];
  filteredOptions: Observable<string[]>;

  onRoleSelectionChange(event: any): void {
    const selectedRole = event.value;
    this.local_data.Role = selectedRole;
  }

  checkExperienceLevelMatch(): void {
    const match = this.experienceLevels.some(level => level.Name === this.local_data.UserProfile.ExperienceLevel?.Name);
  }

  compareSkills(skill1: string, skill2: string): boolean {
    return skill1 === skill2;
  }

  onToggleChange(property: string, value: boolean): void {
    if (`${property}` == 'isActive' && `${value}` == 'true') {
      Object.keys(JSON.parse(JSON.stringify(this.local_data))).forEach(key => {
        this.local_data.IsActive = true;
      });
    }

    if (`${property}` == 'isActive' && `${value}` == 'false') {
      Object.keys(JSON.parse(JSON.stringify(this.local_data))).forEach(key => {
        this.local_data.IsActive = false;
      });
    }

    if (`${property}` == 'isApproved' && `${value}` == 'true') {
      Object.keys(JSON.parse(JSON.stringify(this.local_data))).forEach(key => {
        this.local_data.IsApproved = true;
      });
    }

    if (`${property}` == 'isApproved' && `${value}` == 'false') {
      Object.keys(JSON.parse(JSON.stringify(this.local_data))).forEach(key => {
        this.local_data.IsApproved = false;
      });
    }
  }

  ngOnInit(): void {
    this.filteredOptions = this.firstControl.valueChanges.pipe(
      startWith(''),
      map((value) => this._filter(value || ''))
    );
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();
    return this.firstoption.filter((option) =>
      option.toLowerCase().includes(filterValue)
    );
  }

  doAction(): void {
    if (this.action === 'Update') {
      //validation on user update
      if (this.local_data.Role == "" || this.local_data.Role === undefined || this.local_data.Role == "No Role Assigned") {
        this.openSnackBar('Please select a atleast one Role!', 'Close');
        return;
      } else if (this.local_data.Name == "") {
        this.openSnackBar('Please enter a Name!', 'Close');
        return;
      } else if (this.local_data.Email == "") {
        this.openSnackBar('Please enter a Email!', 'Close');
        return;
      } else {

        this.UserService.updateUser(this.local_data).subscribe({
          next: (result) => {
          },
          error: (error) => {
            this.openSnackBar('User updated failed. Please contact Dev Team !', 'Close');
          },
          complete: () => {
            console.log('completed user update');
            this.dialogRef.close(this.action);
            this.openSnackBar('User updated successfully!', 'Close');
          }
        });
      }
      //validation end
    }
    else if (this.action === 'Add') {
      //validate on User Addition Role Selection
      if (this.local_data.Role == "" || this.local_data.Role === undefined) {
        this.openSnackBar('Please select a atleast one Role!', 'Close');
        return;
      } else if (this.local_data.Name == "") {
        this.openSnackBar('Please enter a Name!', 'Close');
        return;
      } else if (this.local_data.Email == "") {
        this.openSnackBar('Please enter a Email!', 'Close');
        return;
      }
      else {

        this.UserService.createUser(this.local_data).subscribe({
            next: (result) => {
              //console.log('result from server after update user post' + JSON.stringify(result));
            },
            error: (error) => {
              this.openSnackBar('User create failed. Please contact Dev Team !', 'Close');
            },
          complete: () => {
            console.log('completed user create');
            this.dialogRef.close(this.action);
              this.openSnackBar('User added successfully!', 'Close');
            }
        });
        
      }
      //end of validation
    }
    else if (this.action === 'Delete') {
      //console.log('delete user id' + this.local_data.ID);
      //this.openSnackBar('Under Construction !. Please refer to Portal Version for APIs in construction. !', 'Close');

      this.UserService.deleteUser(this.local_data.ID).subscribe({
        next: (result) => {
          //console.log('result from server after update user post' + JSON.stringify(result));
        },
        error: (error) => {
          console.log('user deletion error' + error);
         this.openSnackBar('User delete failed. Please contact Dev Team !' + error, 'Close');
        },
        complete: () => {
          this.dialogRef.close();
          this.openSnackBar('User deleted successfully!', 'Close');
        }
      });  
    }

    
  }

  openSnackBar(message: string, action: string): void {
    this.snackBar.open(message, action, {
      duration: 3000,
      horizontalPosition: 'center',
      verticalPosition: 'top',
    });
  }

  closeDialog(): void {
    this.dialogRef.close("closeDialog");
  }

  trackByUser(index: number, user: any): number {
    return user.ID;
  }

  trackExperienceLevel(index: number, experienceLevel: any): number {
    return experienceLevel.ID;
  }

  trackSkill(index: number, skill: any): number {
    return skill.ID;
  }
}

function isObjectEmpty(myEmptyObj: any) {
  return Object.keys(myEmptyObj).length === 0
}
