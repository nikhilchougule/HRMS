import { Routes } from '@angular/router';
import { AuthGuard } from './auth.guard';
import { SignupComponent } from './authentication/signup/signup.component';
import { SigninComponent } from './authentication/signin/signin.component';
import { AuthenticationComponent } from './authentication/authentication.component';
import { AdminComponent } from './dashboard/admin/admin.component';
import { EmployeeComponent } from './dashboard/employee/employee.component';
import { HireeComponent } from './dashboard/hiree/hiree.component';
import { HRComponent } from './dashboard/hr/hr.component';
import { LogoutComponent } from './authentication/logout/logout.component';

export const routes: Routes = [

  { path: '', component: SigninComponent },
  {
    path: 'authentication',
    component: AuthenticationComponent,
    children: [
      { path: 'signin', component: SigninComponent },
      { path: 'signup', component: SignupComponent },
      { path: 'logout', component: LogoutComponent }
    ]
  },
  { path: 'dashboard/admin', component: AdminComponent, canActivate: [AuthGuard] },
  { path: 'dashboard/hr', component: HRComponent, canActivate: [AuthGuard] },
  { path: 'dashboard/employee', component: EmployeeComponent, canActivate: [AuthGuard] },
  { path: 'dashboard/hiree', component: HireeComponent, canActivate: [AuthGuard] }
  //{path: '**', component: NotFoundComponent} // This line will remain down from the whole pages component list
];
