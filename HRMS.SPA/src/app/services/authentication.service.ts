import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, tap } from 'rxjs';


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

//classes
export class UserSignupRequest {
  public name?: string;
  public email?: string;
  public mobilenumber?: string;
  public password?: string;
  public administrator?: boolean;
  public employee?: boolean;
  public hr?: boolean;

  public constructor(name: string, email: string, mobilenumber: string, password: string, administrator: boolean, employee: boolean, hr: boolean) {
    this.name = name;
    this.email = email;
    this.mobilenumber = mobilenumber;
    this.password = password;
    this.administrator = administrator;
    this.employee = employee;
    this.hr = hr;
  }
}

export class UserSignupResponse {
  public name?: string;
  public email?: string;
  public mobilenumber?: string;
  public isError?: boolean;
  public errorMessages?: string[];

  public constructor(name: string, email: string, mobilenumber: string, isError: boolean, errorMessages: string[]) {
    this.name = name;
    this.email = email;
    this.mobilenumber = mobilenumber;
    this.isError = isError;
    this.errorMessages = errorMessages;
  }
}

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {

  constructor(private http: HttpClient) {
  }

  signUpUserObservable(userSubmitForm: any): Observable<UserSignupResponse> {
    const newUserSignupRequest = new UserSignupRequest(userSubmitForm.name, userSubmitForm.email, userSubmitForm.mobilenumber, userSubmitForm.password, userSubmitForm.administrator, userSubmitForm.employee, userSubmitForm.hr);
   return this.http.post<UserSignupRequest>('http://localhost:29372/api/authentication/signupuser', JSON.stringify(newUserSignupRequest), httpOptions).pipe(
     tap(data => console.log('in suthentication.service observable: ' + JSON.stringify(data))
     )
    );

  }

}
