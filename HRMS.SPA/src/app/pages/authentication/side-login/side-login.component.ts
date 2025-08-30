import { Component } from '@angular/core';
import { CoreService } from 'src/app/services/core.service';
import { FormGroup, FormControl, Validators, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { MaterialModule } from '../../../material.module';
import { BrandingComponent } from '../../../layouts/full/vertical/sidebar/branding.component';
import { AuthenticationService } from '../../../services/api/authentication.service';
import { UserSigninRequest } from '../../../models/authentication.model';
import { LocalStorageService } from '../../../services/common/local-storage.service';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
    selector: 'app-side-login',
    imports: [RouterModule, MaterialModule, FormsModule, ReactiveFormsModule, BrandingComponent],
    templateUrl: './side-login.component.html'
})
export class AppSideLoginComponent {
  options = this.settings.getOptions();

  constructor(private settings: CoreService,
    private router: Router,
    private _authService: AuthenticationService,
    private _localStorageService: LocalStorageService,
    private snackBar: MatSnackBar,
  ) {
    _localStorageService.clear();
  }

  form = new FormGroup({
    Email: new FormControl('', [Validators.required, Validators.email, Validators.minLength(2)]),
    Password: new FormControl('', [Validators.required]),
  });

  get f() {
    return this.form.controls;
  }

  submit() {
    // console.log(this.form.value);
    //this.router.navigate(['/dashboards/dashboard1']);

    if (this.form.valid) {
      let userSubmitForm = this.form.value;
      let errorMessages: Array<String> = [];
      //let signInRequest = Object.assign(new UserSigninRequest(userSubmitForm.Name, userSubmitForm.Password), userSubmitForm)


      let returnFromService = this._authService.signInUserObservable(userSubmitForm)
        .subscribe(response => {
          if (response.IsError == true || response.IsValid == false) {
            this.openSnackBar(response.ErrorMessages![0], 'Close');
          } else
            if (response.IsError == false || response.IsValid == true) {
              console.log('roles' + response.Roles![0]);

              if (response.Roles!.length > 0) {

                this._localStorageService.setItem('JwtToken', response.JwtToken!);
                this._localStorageService.setItem('UserRole', response.Roles![0]);
                this._localStorageService.setItem('UserID', response.UserID!);
                this._localStorageService.setItem('UserName', response.Name!);
                this._localStorageService.setItem('UserEmail', response.Email!);
                //this._authService.setAuthenticationVariable(true);

                if (response.Roles![0] == 'Applicant') {
                  this.router.navigate(['/applicant/aptitudetests']);

                  //Uncomment below code to redirect to profile page if user profile is not complete
                  //if (response.UserProfile === null || response.UserProfile?.Company == null || response.UserProfile.Designation == null) {
                  //  this.router.navigate(['users/profile']);
                  //} else {
                  //  this.router.navigate(['/applicant/aptitudetests']);
                  //}

                } else if (response.Roles![0] == 'Administrator' || response.Roles![0] == 'HR') {
                  //No Page for Employee Role . In Future
                  //dashboard is disabled for now. Redirect to users for now
                  //this.router.navigate(['/dashboards/admin']);
                  this.router.navigate(['/configuration/users']);
                }              
              } else if (response.Roles?.length === 0 || response.Roles![0] === undefined) {
                console.log('role not found');
                this.openSnackBar('No Role has be assigned to you. Please contact HR !', 'Close');
              }
            } 

        });

    } else {
      this.openSnackBar('Your Registration Form is invalid. Please review it before continuing Registration !', 'Close');
    }
  }

  openSnackBar(message: string, action: string): void {
    this.snackBar.open(message, action, {
      duration: 3000,
      horizontalPosition: 'center',
      verticalPosition: 'top',
    });
  }

}
