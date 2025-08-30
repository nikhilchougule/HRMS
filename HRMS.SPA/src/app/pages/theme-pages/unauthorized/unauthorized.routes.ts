import { Routes } from '@angular/router';

// theme pages
import { UnAuthorizedAppLandingpageComponent } from './unauthorized.component';

export const LandingPageRoutes: Routes = [
  {
    path: '',
    children: [
      {
        path: '',
        component: UnAuthorizedAppLandingpageComponent,
      },
    ],
  },
];
