import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})

export class AuthenticationService {

  constructor() {
    //login();
  }

  public signUpUser(userSubmitForm: any) {
    alert('from auth service signup function' + JSON.stringify(userSubmitForm));
  }

  public signInUser() {
    alert('from auth service signin function');
  }
}

function login() {

}

function  logout() {

}
