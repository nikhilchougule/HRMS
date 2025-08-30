import { Component } from '@angular/core';
import { CoreService } from 'src/app/services/core.service';
import { FormGroup, FormControl, Validators, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { MaterialModule } from '../../../material.module';
import { BrandingComponent } from '../../../layouts/full/vertical/sidebar/branding.component';
import { Observable, tap } from 'rxjs';
import { ApiURL, HttpOptions } from '../../../config';
import { UserSignupResponse, UserSignupRequest } from '../../../models/authentication.model';
import { HttpClient } from '@angular/common/http';
import { AuthenticationService } from '../../../services/api/authentication.service';
import { MatSnackBar } from '@angular/material/snack-bar';
import { TablerIconsModule } from 'angular-tabler-icons';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-side-register',
  imports: [RouterModule, MaterialModule, FormsModule, ReactiveFormsModule, BrandingComponent, TablerIconsModule, CommonModule],
  templateUrl: './side-register.component.html'
})

export class AppSideRegisterComponent {
  options = this.settings.getOptions();

  constructor(private settings: CoreService, private router: Router, private http: HttpClient, private _authService: AuthenticationService, private snackBar: MatSnackBar,) { }

  form = new FormGroup({
    Name: new FormControl('', [Validators.required, Validators.minLength(2)]),
    Email: new FormControl('', [Validators.required, Validators.email]),
    MobileNumber: new FormControl('', [Validators.required]),
    Password: new FormControl('', [Validators.required]),
  });

  get f() {
    return this.form.controls;
  }

  redirectToApplicantRegistration(): void {
    console.log('Redirecting to Applicant Registration Page...');
    this.router.navigate(['/authentication/side-register-applicant'])
  }

  submit() {
    if (this.form.valid) {
      let userSubmitForm = this.form.value;
      let returnFromService = this._authService.signUpUserObservable(userSubmitForm)
        .subscribe(response => {
          if (response.IsError == true) {
            this.openSnackBar(response.ErrorMessages![0], 'Close');
          } else if (response.IsError == false) {
            this.openSnackBar('Account Created Successfully.Redirecting to Login!', 'Close');
            this.router.navigate(['/authentication/login'])
          }
        });
    } else {
      this.openSnackBar('Your Signup Form is invalid. Please review it again and submit !', 'Close');
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
