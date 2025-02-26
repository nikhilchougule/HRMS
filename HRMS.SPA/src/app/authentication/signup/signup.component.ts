import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { Params, RouterLink } from '@angular/router';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { NgIf } from '@angular/common';
import { Router } from '@angular/router';
import { CustomizerService } from '../../services/customizer.service';
import { AuthenticationService } from '../../services/authentication.service';
import { DialogComponent } from '../../common/dialog/dialog.component';
import { Observable } from 'rxjs';
import { UserSignupRequest, UserSignupResponse } from '../../models/authentication.model'

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [RouterLink, MatFormFieldModule, MatInputModule, MatButtonModule, MatCheckboxModule, ReactiveFormsModule, NgIf],
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.scss',
  providers: [DialogComponent]
})

export class SignupComponent {

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
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      mobilenumber: ['', Validators.required],
      password: ['', [Validators.required, Validators.minLength(8)]],
      //administrator: false,
      //employee: true,
      //hr: false,
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
      let signUpRequest = Object.assign(new UserSignupRequest(userSubmitForm.name, userSubmitForm.email, userSubmitForm.mobilenumber, userSubmitForm.password, userSubmitForm.administrator, userSubmitForm.employee, userSubmitForm.hr), userSubmitForm)

      let returnFromService = this.authenticationService.signUpUserObservable(signUpRequest)
        .subscribe(response => {
          if (response.IsError == true) {
            this.dialog.openDialog(response.ErrorMessages);
          } else if (response.IsError == false) {
            this.dialog.openDialog(["Your Account was successfully created. Please login to continue !"]);
            this.router.navigate(['/']);
          }
        });
    } else {
      this.dialog.openDialog(['Your Registration Form is invalid. Please review it before continuing Registration !']);
    }
  }

}

function validateSignupRoleForm(formData: Object) {
  let roleFormObject = [];
  let invalidData = false;

  //alert('validateSignupRoleForm' + JSON.stringify(formData));
  roleFormObject.push(formData)
  console.log(JSON.stringify(roleFormObject.length));

  if (roleFormObject.length < 1) invalidData = true;

  let listOfObjects: { [key: string]: any; }[] = [];

  roleFormObject.forEach(function (entry) {
    const singleObj: { [key: string]: any } = {}

    //singleObj['type'] = 'Role';
    singleObj['value'] = entry;

    listOfObjects.push(singleObj);
    console.log('single obj' + singleObj);
  });
  return true;
}
