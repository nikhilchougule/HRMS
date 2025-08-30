import { Component } from '@angular/core';
import { CoreService } from 'src/app/services/core.service';
import {
  FormGroup,
  FormControl,
  Validators,
  FormsModule,
  ReactiveFormsModule,
} from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { MaterialModule } from '../../../material.module';
import { BrandingComponent } from '../../../layouts/full/vertical/sidebar/branding.component';
import { Observable, tap } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { ApiURL, HttpOptions } from '../../../config';
import { UserSignupRequest, UserSignupResponse } from '../../../models/authentication.model';

@Component({
  selector: 'app-boxed-register',
  imports: [
    RouterModule,
    MaterialModule,
    FormsModule,
    BrandingComponent,
    ReactiveFormsModule,
  ],
  templateUrl: './boxed-register.component.html',
})
export class AppBoxedRegisterComponent {
  options = this.settings.getOptions();
    dialog: any;
    router: any;

  constructor(private settings: CoreService,private http: HttpClient) {}

  form = new FormGroup({
    Name: new FormControl('', [Validators.required, Validators.minLength(6)]),
    Email: new FormControl('', [Validators.required]),
    MobileNumber: new FormControl('', [Validators.required]), 
    Password: new FormControl('', [Validators.required]),
  });

  get f() {
    return this.form.controls;
  }

  submit() {
    // console.log(this.form.value);
    // this.router.navigate(['/dashboards/dashboard1']);
    //this.dialog.openDialog(['response.ErrorMessages']);

    let userSubmitForm = this.form.value;
    //alert(JSON.stringify(this.form.value));
    //let signUpRequest = new UserSignupRequest("this.form.controls.Name", userSubmitForm.Email, userSubmitForm.mobilenumber, userSubmitForm.password, userSubmitForm.administrator, userSubmitForm.employee, userSubmitForm.hr);

    //  let returnFromService = this.signUpUserObservable(userSubmitForm)
    //    .subscribe(response => {
    //      if (response.IsError == true) {
    //        this.dialog.openDialog(response.ErrorMessages);
    //      } else if (response.IsError == false) {
    //        this.dialog.openDialog(["Your Account was successfully created. Please login to continue !"]);
    //        this.router.navigate(['/dashboards/dashboard1']);
    //      }
    //    });
    //}

    //signUpUserObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    //  const newUserSignupRequest = new UserSignupRequest(userSubmitForm.Name, userSubmitForm.Email, '42342142143', userSubmitForm.Password, true, true, true);
    //  console.log('signup request' + JSON.stringify(newUserSignupRequest));
    //  return this.http.post<UserSignupRequest>(ApiURL + '/api/authentication/SignupUser', JSON.stringify(newUserSignupRequest), HttpOptions).pipe(
    //    tap(() => console.log('in authentication.service.signup observable: ')
    //    )
    //  );
    //}
  }
}
