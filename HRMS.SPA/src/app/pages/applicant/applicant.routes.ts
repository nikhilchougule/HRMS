import { Routes } from '@angular/router';

// Forms
import { ApplicantAptitudeTestsComponent } from './aptitudetests/aptitudetests.component';
import { ApplicantApptitudeTestDetailComponent } from './aptitudetests/aptitudetest-detail/aptitudetest-detail.component';
import { ApplicantAuthGuard } from '../../authguard-applicant.guard';

export const ApplicantRoutes: Routes = [
  {
    path: 'aptitudetests',
    canActivate: [ApplicantAuthGuard], // Protect the route
    component: ApplicantAptitudeTestsComponent,
    data: {
      title: 'Your Aptitude Tests',
      urls: [
/*        { title: 'Dashboard', url: '/dashboards/dashboard1' },*/
        { title: 'Your Aptitude Tests' },
      ],
    },
  },
  {
    /*path: 'aptitudetests/detail/:id',*/
    path: 'aptitudetests/start',
    canActivate: [ApplicantAuthGuard], // Protect the route
    component: ApplicantApptitudeTestDetailComponent,
    data: {
      title: 'Aptitude Test Started',
      urls: [
/*        { title: 'Dashboard', url: '/dashboards/dashboard1' },*/
        { title: 'Aptitude Test Started' },
      ],
    },
  }
];
