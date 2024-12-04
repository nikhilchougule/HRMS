import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { RouterLink } from '@angular/router';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { NgIf } from '@angular/common';
import { Router } from '@angular/router';
import { CustomizerService } from '../../customizer/customizer.service';
import { AuthenticationService } from '../../services/authentication.service';
import { DialogComponent } from '../../common/dialog/dialog.component';
import { UserSigninRequest, UserSigninResponse } from '../../models/authentication.model'
import { APIToken } from '../../api.config';
import { exit } from 'process';

@Component({
  selector: 'app-sign-in',
  standalone: true,
  imports: [RouterLink, MatFormFieldModule, MatInputModule, MatButtonModule, MatCheckboxModule, ReactiveFormsModule, NgIf],
  templateUrl: './signin.component.html',
  styleUrl: './signin.component.scss',
  providers: [DialogComponent]
})

export class SigninComponent {

  // isToggled
  isToggled = false;

  constructor(
    private fb: FormBuilder,
    private router: Router,
    public themeService: CustomizerService,
    public authenticationService: AuthenticationService,
    public dialog: DialogComponent
  ) {
    this.authForm = this.fb.group({
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]],
    });
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
  }

  // Password Hide
  hide = true;

  // Form
  authForm: FormGroup;

  onSubmit() {
    if (this.authForm.valid) {
      let userSubmitForm = this.authForm.value;
      let errorMessages: Array<String> = [];
      let signInRequest = Object.assign(new UserSigninRequest(userSubmitForm.name, userSubmitForm.password), userSubmitForm)

      let returnFromService = this.authenticationService.signInUserObservable(signInRequest)
        .subscribe(response => {
          if (response.IsError == true || response.IsValid == false) {
            this.dialog.openDialog(response.ErrorMessages);
          } else
            if (response.IsError == false || response.IsValid == true) {
              let landingPageURL = getLandingPageURL(response.Roles!);
              if (landingPageURL == null) {
                this.dialog.openDialog(['Trouble logging in with Role. Please contact HR team !']);
              } else {
                localStorage.setItem('JwtToken', response.JwtToken!);
                this.router.navigate([landingPageURL]);
              }
            }
        });
    } else {
      console.log('Your Login Form is invalid. Please review it before continuing Login !');
    }
  }
}

function getLandingPageURL(roles: Array<string>) {
  let LandingPageOrder: Array<string> = [];

  if (roles.includes("Administrator")) {
    LandingPageOrder.push('/dashboard/admin');
  } else if (roles.includes("HR")) {
    LandingPageOrder.push('/dashboard/hr');
  } else if (roles.includes("Employee")) {
    LandingPageOrder.push('/dashboard/employee');
  } else if (roles.includes("Hiree")) {
    LandingPageOrder.push('/dashboard/hiree');
  }

  if (LandingPageOrder.length == 0) {
    return null
  } else {
    return LandingPageOrder[0];
  }
}
