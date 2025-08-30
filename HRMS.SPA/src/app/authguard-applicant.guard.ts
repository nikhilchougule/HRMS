import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanDeactivate,  Router } from '@angular/router';
import { AuthenticationService } from './services/api/authentication.service';
import { ApplicantApptitudeTestDetailComponent } from './pages/applicant/aptitudetests/aptitudetest-detail/aptitudetest-detail.component';

@Injectable({
  providedIn: 'root'
})
export class ApplicantAuthGuard implements CanActivate, CanActivateChild, CanDeactivate<ApplicantApptitudeTestDetailComponent>  {
  constructor(private authService: AuthenticationService, private router: Router) {}

  canActivate(): boolean {
    return this.checkIfApplicant();
  }

  canActivateChild(): boolean {
    return this.checkIfApplicant();
  }

  canDeactivate(component: ApplicantApptitudeTestDetailComponent): boolean {
    //if (component.hasUnsavedChanges()) {
    //  return window.confirm('You have unsaved changes. Do you really want to leave?');
    //}
    return true;
  }

  checkIfApplicant(): boolean {
    if (this.checkAuth()) {
      if (this.authService.isApplicant()) {
        return true;
      } else {
        this.router.navigate(['/unauthorized']);
        return false;
      }
      return true;
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
