import { Routes } from '@angular/router';
import { SignupComponent } from './authentication/signup/signup.component';
import { SigninComponent } from './authentication/signin/signin.component';
import { AuthenticationComponent } from './authentication/authentication.component';
import { AdminComponent } from './dashboard/admin/admin.component';

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
  { path: 'dashboard/admin', component: AdminComponent }
  //{path: '**', component: NotFoundComponent} // This line will remain down from the whole pages component list
];
