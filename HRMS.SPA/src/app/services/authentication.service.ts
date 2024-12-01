import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {

  constructor(private http: HttpClient) {
  }

  public signUpUser(userSubmitForm: any) {
    let newUserSigninRequest = new UserSigninRequest(userSubmitForm.Name, userSubmitForm.Email, userSubmitForm.MobileNumber, userSubmitForm.Password, userSubmitForm.Administrator, userSubmitForm.Employee, userSubmitForm.HR);
    this.http.post<UserSigninRequest>('http://localhost:29372/api/authentication/signupuser', newUserSigninRequest).subscribe(config => {
      console.log('Updated config:', config);
    });
  }

  public signInUser() {
    alert('from auth service signin function');
  }
}

function login() {

}

function  logout() {

}

//classes
class UserSigninRequest {
  private Name: string;
  private Email: string;
  private MobileNumber: string;
  private Password: string;
  private Administrator: boolean;
  private Employee: boolean;
  private HR: boolean;

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
//End classes
