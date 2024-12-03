import { Routes } from '@angular/router';
import { SignupComponent } from './authentication/signup/signup.component';
import { SigninComponent } from './authentication/signin/signin.component';
import { AuthenticationComponent } from './authentication/authentication.component';
import { AdminComponent } from './dashboard/admin/admin.component';
import { EmployeeComponent } from './dashboard/employee/employee.component';
import { HireeComponent } from './dashboard/hiree/hiree.component';
import { HRComponent } from './dashboard/hr/hr.component';

export const routes: Routes = [

  { path: '', component: SigninComponent },
  {
    path: 'authentication',
    component: AuthenticationComponent,
    children: [
      { path: 'signin', component: SigninComponent },
      { path: 'signup', component: SignupComponent }
    ]
  },
  { path: 'dashboard/admin', component: AdminComponent },
  { path: 'dashboard/hr', component: HRComponent },
  { path: 'dashboard/employee', component: EmployeeComponent },
  { path: 'dashboard/hiree', component: HireeComponent }
  //{path: '**', component: NotFoundComponent} // This line will remain down from the whole pages component list
];
