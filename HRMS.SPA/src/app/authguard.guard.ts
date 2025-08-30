import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanDeactivate,  Router } from '@angular/router';
import { AuthenticationService } from './services/api/authentication.service';
import { ApplicantApptitudeTestDetailComponent } from './pages/applicant/aptitudetests/aptitudetest-detail/aptitudetest-detail.component';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate, CanActivateChild, CanDeactivate<ApplicantApptitudeTestDetailComponent>  {
  constructor(private authService: AuthenticationService, private router: Router) {}

  canActivate(): boolean {
    return this.checkDashboardRedirection();
  }

  canActivateChild(): boolean {
    console.log('in authguard');
    return this.checkDashboardRedirection();
  }

  canDeactivate(component: ApplicantApptitudeTestDetailComponent): boolean {
    //if (component.hasUnsavedChanges()) {
    //  return window.confirm('You have unsaved changes. Do you really want to leave?');
    //}
    return true;
  }

  checkDashboardRedirection(): boolean {
    if (this.checkAuth()) {

      const userRole = this.authService.getDashboardRedirection();
      console.log('user Role from method' + userRole);

      if (this.authService.getDashboardRedirection() === "Administrator") {
        console.log('in checkDashboardRedirection - administrator');
        this.router.navigate(['/dashboards/admin']);
        return false;
      }
      if (this.authService.getDashboardRedirection() === "Applicant") {
        console.log('in checkDashboardRedirection - applicant');
        this.router.navigate(['/applicant/aptitudetests']);
        return false;
      }

      return true;
    } else {
      this.router.navigate(['/unauthorized']);
      return false;
    }
  }

  checkIfApplicant(): boolean {
    if (this.checkAuth()) {
      if (this.authService.isApplicant()) {
        return true;
      } else {
        this.router.navigate(['/unauthorized']);
        return false;
      }
    } else {
      return false;
    }
  }

  checkIfAdmin(): boolean {
    if (this.checkAuth()) {
      if (this.authService.isAdmin()) {
        return true;
      } else {
        this.router.navigate(['/unauthorized']);
        return false;
      }
    } else {
      return false;
    }
  }

  canLoad(): boolean {
    return this.checkAuth();
  }

  private checkAuth(): boolean {
    if (this.authService.isAuthenticatedUser()) {
      return true;
    } else {
      this.router.navigate(['/session-expired']);
      return false;
    }
  }

}
