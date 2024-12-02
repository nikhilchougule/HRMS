import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, tap } from 'rxjs';
import { UserSigninRequest, UserSigninResponse } from '../models/authentication.model'
import { UserSignupRequest, UserSignupResponse } from '../models/authentication.model'

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE',
    'key': 'x-api-key',
    'value': 'NNctr6Tjrw9794gFXf3fi6zWBZ78j6Gv3UCb3y0x',
  })
};

//Classes Start

//classes UserSignUp

//Classes UserSignUp End

//Classes UserSignIn


//Classes UserSignIn End

//Classes End

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {

  constructor(private http: HttpClient) {
  }

  signUpUserObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    const newUserSignupRequest = new UserSignupRequest(userSubmitForm.name, userSubmitForm.email, userSubmitForm.mobilenumber, userSubmitForm.password, userSubmitForm.administrator, userSubmitForm.employee, userSubmitForm.hr);
    return this.http.post<UserSignupRequest>('http://localhost:29372/api/authentication/SignupUser', JSON.stringify(newUserSignupRequest), httpOptions).pipe(
      tap(data => console.log('in authentication.service.signup observable: ' + JSON.stringify(data))
      )
    );
  }

  signInUserObservable(userSubmitForm: any): Observable<UserSigninResponse> {
    const newUserSigninRequest = new UserSigninRequest(userSubmitForm.email, userSubmitForm.password);
    return this.http.post<UserSigninRequest>('http://localhost:29372/api/authentication/SigninUser', JSON.stringify(newUserSigninRequest), httpOptions).pipe(
      tap(data => console.log('in suthentication.service.signin observable: ' + JSON.stringify(data))
      )
    );
  }

}
