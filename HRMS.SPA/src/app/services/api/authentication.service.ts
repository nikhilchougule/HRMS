import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, tap } from 'rxjs';
import { UserSigninRequest, UserSigninResponse, UserSignupRequest, UserSignupResponse } from '../../models/authentication.model'
import { ApiURL, HttpOptions, APIToken } from '../../config'
import { of, } from "rxjs";
import { map } from "rxjs/operators";
import { LocalStorageService } from '../common/local-storage.service';

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {
  serverToken: string = "";
  clientToken: string = "";
  private isAuthenticated = false;

  constructor(private http: HttpClient, private _localStorageService: LocalStorageService) {
  }

  isAdmin(): boolean {
    if (this._localStorageService.getItem('UserRole') == "Administrator" || this._localStorageService.getItem('UserRole') == "HR") {
      return true;
    } else {
      return false;
    }
  }

  isApplicant(): boolean {
    if (this._localStorageService.getItem('UserRole') == "Applicant") {
      return true;
    } else {
      return false;
    }
  }

  getDashboardRedirection(): string {
    const userRole = this._localStorageService.getItem('UserRole');
    console.log('userRole' + userRole);
    if (this._localStorageService.getItem('UserRole') === "Administrator") {
      return "Administrator";
    } else if (this._localStorageService.getItem('UserRole') === "Applicant") {
      return "Applicant";
    }
    else {
      return "/authentication/login";
    }
  }

  signUpUserObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    const newUserSignupRequest = new UserSignupRequest(userSubmitForm.Name, userSubmitForm.Email, userSubmitForm.MobileNumber, userSubmitForm.Password, false,  false, false, false);
    return this.http.post<UserSignupRequest>(ApiURL + '/api/authentication/SignupUser', JSON.stringify(newUserSignupRequest), HttpOptions).pipe(
      tap(() => console.log('in authentication.service.signup observable: ')
      )
    );
  }

  signUpApplicantObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    const newUserSignupRequest = new UserSignupRequest(userSubmitForm.Name, userSubmitForm.Email, userSubmitForm.MobileNumber, userSubmitForm.Password, false, false, false, true);
    return this.http.post<UserSignupRequest>(ApiURL + '/api/authentication/SignupUser', JSON.stringify(newUserSignupRequest), HttpOptions).pipe(
      tap(() => console.log('in authentication.service.signup observable: ')
      )
    );
  }

  signInUserObservable(userSubmitForm: any): Observable<UserSigninResponse> {
    const newUserSigninRequest = new UserSigninRequest(userSubmitForm.Email, userSubmitForm.Password);
    return this.http.post<UserSigninRequest>(ApiURL + '/api/authentication/SigninUser', JSON.stringify(newUserSigninRequest), HttpOptions).pipe(
      tap(() => console.log('in authentication.service.signin observable:')
      )
    );
  }

  //setAuthenticationVariable(isAuthenticated: boolean): void {
  //  this.isAuthenticated = isAuthenticated;
  //}

  isAuthenticatedUser(): boolean {
    //check for Token, UserID, UserName, UserEmail, Role. Later Refactor to check JWT Token
    if (this._localStorageService.getItem('UserID') != null || this._localStorageService.getItem('UserName') != null || this._localStorageService.getItem('UserEmail') !=null || this._localStorageService.getItem('UserRole') !=null) {
      console.log('checking in isAuthService userid, username, useremail, role is not null');
      this.isAuthenticated = true;
    } else {
      console.log('checking in isAuthService either userid, username, useremail, role is  null');
      this.isAuthenticated = false;
    }
    return this.isAuthenticated;
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
