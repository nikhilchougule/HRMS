import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanDeactivate, Router } from '@angular/router';
import { Observable } from 'rxjs/internal/Observable';
import { AuthenticationService } from './services/authentication.service';
import { HttpRequest, HttpHandler, HttpErrorResponse } from '@angular/common/http';
import { request } from 'express';
import { catchError } from 'rxjs';

@Injectable({
  providedIn: 'root'
})

export class AuthGuard implements CanActivate, CanActivateChild {
  serverToken: any;
  clientToken: any;
    _authService: any;
    _storageService: any;

  constructor(private router: Router, private authService: AuthenticationService) { }

  canActivate(): boolean {

    this.clientToken = localStorage.getItem('JwtToken');

    if (this.clientToken) {
     
      return true;
    } else {
      this.router.navigate(['/authentication/logout']);
      return false;
    }

  }

  canActivateChild(): boolean {
    return this.checkAuth();
  }

  canLoad(): boolean {
    return this.checkAuth();
  }

  private checkAuth(): boolean {
    return true;
  }
  //private async checkAuth(): boolean {

  //  let redirectFlag:boolean = false;

  //  let returnFromService = await this.authService.getTokenFromServer()
  //    .subscribe(response => {
  //      console.log('response from subscribe' + response.JwtToken);

  //      this.clientToken = localStorage.getItem('JwtToken')?.toString();
  //      this.serverToken = response.JwtToken;

  //      if (this.serverToken == this.clientToken) {
  //        console.log('token matched');
  //        redirectFlag = true;
  //        return redirectFlag;
  //      } else {
  //        this.router.navigate(['/authentication/logout']);
  //        return redirectFlag;
  //      }
  //    }
  //  );

  //  return redirectFlag;

  //}


}

function intercept(request: any, arg1: any, next: any, HttpHandler: any) {
    throw new Error('Function not implemented.');
}

function throwError(error: HttpErrorResponse) {
    throw new Error('Function not implemented.');
}
