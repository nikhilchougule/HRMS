import { Injectable } from '@angular/core';
import { CanActivate, CanActivateChild, CanDeactivate,  Router } from '@angular/router';
import { AuthenticationService } from './services/api/authentication.service';
import { ApplicantApptitudeTestDetailComponent } from './pages/applicant/aptitudetests/aptitudetest-detail/aptitudetest-detail.component';

@Injectable({
  providedIn: 'root'
})
export class AdminAuthGuard implements CanActivate, CanActivateChild, CanDeactivate<ApplicantApptitudeTestDetailComponent>  {
  constructor(private authService: AuthenticationService, private router: Router) {}

  canActivate(): boolean {
    return this.checkIfAdmin();
  }

  canActivateChild(): boolean {
    return this.checkAuth();
  }

  canDeactivate(component: ApplicantApptitudeTestDetailComponent): boolean {
    //if (component.hasUnsavedChanges()) {
    //  return window.confirm('You have unsaved changes. Do you really want to leave?');
    //}
    return true;
  }

  checkIfAdmin(): boolean {
    if (this.checkAuth()) {
      if (this.authService.isAdmin()) {
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
