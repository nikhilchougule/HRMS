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
      //this.router.navigate(['/']);
      let userSubmitForm = this.authForm.value;
      let errorMessages: Array<String> = [];
      let signInRequest = Object.assign(new UserSigninRequest(userSubmitForm.name, userSubmitForm.password), userSubmitForm)

      let returnFromService = this.authenticationService.signInUserObservable(signInRequest)
        .subscribe(response => {
          if (response.IsError == true || response.IsValid == false) {
            this.dialog.openDialog(response.ErrorMessages);
          } else
            if (response.IsError == false || response.IsValid == true) {
            //new APIToken(response.JwtToken!);
            localStorage.setItem('JwtToken', 'bearer '+ response.JwtToken )
            this.dialog.openDialog(['Login Successfull. We will redirect you to the dashboard !']);
            //this.router.navigate(['/']);
          }
        });
    } else {
      console.log('Your Login Form is invalid. Please review it before continuing Login !');
    }
  }

}
