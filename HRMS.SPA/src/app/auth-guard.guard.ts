import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanDeactivate, Router } from '@angular/router';
import { Observable } from 'rxjs/internal/Observable';
import { AuthenticationService } from './services/authentication.service';

@Injectable({
  providedIn: 'root'
})

export class AuthGuard implements CanActivate, CanActivateChild {
  serverToken: any;
  clientToken: any;

  constructor(private router: Router, private authService: AuthenticationService) { }

  canActivate(): boolean {
    let sf = this.checkAuth();

    console.log('in can activiate return' + sf);
    return this.checkAuth();
  }

  canActivateChild(): boolean {
    return this.checkAuth();
  }

  canLoad(): boolean {
    return this.checkAuth();
  }

  private checkAuth(): boolean {

    let redirectFlag:boolean = false;

    let returnFromService = this.authService.getTokenFromServer()
      .subscribe(response => {
        console.log('response from subscribe' + response.JwtToken);

        this.clientToken = localStorage.getItem('JwtToken')?.toString();
        this.serverToken = response.JwtToken;

        if (this.serverToken == this.clientToken) {
          console.log('token matched');
          redirectFlag = true;
          return redirectFlag;
        } else {
          this.router.navigate(['/authentication/logout']);
          return redirectFlag;
        }
      }
    );

    return redirectFlag;

  }


}
