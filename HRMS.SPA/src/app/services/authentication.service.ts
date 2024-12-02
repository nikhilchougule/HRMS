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

//classes UserSignUp
 class UserSignupRequest {
  public Name?: string;
  public Email?: string;
  public MobileNumber?: string;
  public Password?: string;
  public Administrator?: boolean;
  public Employee?: boolean;
  public HR?: boolean;

  public constructor(Name: string, Email: string, MobileNumber: string, Password: string, Administrator: boolean, Employee: boolean, HR: boolean) {
    this.Name = Name;
    this.Email = Email;
    this.MobileNumber = MobileNumber;
    this.Password = Password;
    this.Administrator = Administrator;
    this.Employee = Employee;
    this.HR = HR;
  }
}

 class UserSignupResponse {
  public Name?: string;
  public Email?: string;
  public MobileNumber?: string;
  public IsError?: boolean;
  public ErrorMessages?: string[];

  public constructor(Name: string, Email: string, MobileNumber: string, IsError: boolean, ErrorMessages: string[]) {
    this.Name = Name;
    this.Email = Email;
    this.MobileNumber = MobileNumber;
    this.IsError = IsError;
    this.ErrorMessages = ErrorMessages;
  }
}
//Classess UserSignUp End

//Classes UserSignIn
class UserSigninRequest {
  public Email?: string;
  public Password?: string;

  public constructor(Email: string, Password: string) {
      this.Email = Email,
      this.Password = Password
  }
}

class UserSigninResponse {
  public Name?: string;
  public Email?: string;
  public Password?: string;
  public Mobilenumber?: string;
  public JwtToken?: string;
  public Roles?: Array<string> = [];
  public IsError?: boolean;
  public IsValid?: boolean;
  public ErrorMessages?: Array<string> = []
}
//Classes UserSignIn End

//Classess End

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
