import { Routes } from '@angular/router';
import { BlankComponent } from './layouts/blank/blank.component';
import { FullComponent } from './layouts/full/full.component';
//import { AuthGuard } from './authguard-admin.guard';

export const routes: Routes = [
  {
    path: '',
    component: FullComponent,
    children: [
      {
        path: '',
        redirectTo: '/authentication/login',
        pathMatch: 'full',
      },
      {
        path: 'dashboards',
        //canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/dashboards/dashboards.routes').then(
            (m) => m.DashboardsRoutes
          ),
      },
      {
        path: 'charts',
        loadChildren: () =>
          import('./pages/charts/charts.routes').then((m) => m.ChartsRoutes),
      },
      {
        path: 'configuration',
       // canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/users/users.routes').then((m) => m.AppsRoutes),
      },
      {
        path: 'aptitudetest',
        //canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/aptitudetest/aptitudetest.routes').then((m) => m.AppsRoutes),
      },
      {
        path: 'question-options',
        //canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/contact-list/question-options.routes').then((m) => m.AppsRoutes),
      },
      {
        path: 'applicant',
        //canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/applicant/applicant.routes').then((m) => m.ApplicantRoutes),
      },
      {
        path: 'settings',
        //canActivateChild: [AuthGuard],
        loadChildren: () =>
          import('./pages/theme-pages/theme-pages.routes').then(
            (m) => m.ThemePagesRoutes
          ),
      },
    ],
  },
  {
    path: '',
    component: BlankComponent,
    children: [
      {
        path: 'authentication',
        loadChildren: () =>
          import('./pages/authentication/authentication.routes').then(
            (m) => m.AuthenticationRoutes
          ),
      },
      {
        path: 'session-expired',
        loadChildren: () =>
          import('./pages/theme-pages/landingpage/landingpage.routes').then(
            (m) => m.LandingPageRoutes
          ),
      },
      {
        path: 'unauthorized',
        loadChildren: () =>
          import('./pages/theme-pages/unauthorized/unauthorized.routes').then(
            (m) => m.LandingPageRoutes
          ),
      },
    ],
  },
  {
    path: '**',
    redirectTo: 'authentication/error',
  },
];
