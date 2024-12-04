import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, tap } from 'rxjs';
import { UserSigninRequest, UserSigninResponse } from '../models/authentication.model'
import { UserSignupRequest, UserSignupResponse } from '../models/authentication.model'
import { ApiURL, HttpOptions, APIToken } from '../api.config'
import { of, } from "rxjs";
import { map } from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {
  serverToken: string = "";
  clientToken: string = "";

  constructor(private http: HttpClient) {
  }

  signUpUserObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    const newUserSignupRequest = new UserSignupRequest(userSubmitForm.name, userSubmitForm.email, userSubmitForm.mobilenumber, userSubmitForm.password, userSubmitForm.administrator, userSubmitForm.employee, userSubmitForm.hr);
    return this.http.post<UserSignupRequest>(ApiURL + '/api/authentication/SignupUser', JSON.stringify(newUserSignupRequest), HttpOptions).pipe(
      tap(() => console.log('in authentication.service.signup observable: ')
      )
    );
  }

  signInUserObservable(userSubmitForm: any): Observable<UserSigninResponse> {
    const newUserSigninRequest = new UserSigninRequest(userSubmitForm.email, userSubmitForm.password);
    return this.http.post<UserSigninRequest>(ApiURL + '/api/authentication/SigninUser', JSON.stringify(newUserSigninRequest), HttpOptions).pipe(
      tap(() => console.log('in authentication.service.signin observable:')
      )
    );
  }

  getTokenFromServer(): Observable<any> {
    return this.http.get<string>(ApiURL + '/api/authentication/GetToken');
  }

  //getTokenFromClient(): Observable<any> {
  //  this.clientToken = localStorage.getItem('JwtToken')!.toString();
  //  return this.clientToken!;
  //}

  //getTokenFromClient() {
  //  return localStorage.getItem('JwtToken')!.toString();
  // // this.clientToken;
  //}

}
