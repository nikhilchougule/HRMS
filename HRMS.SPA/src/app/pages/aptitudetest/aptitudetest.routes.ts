import { Routes } from '@angular/router';
import { AppAptitudeTestListComponent } from './aptitudetest-list/aptitudetest-list.component';
import { AddAptitudeTestComponent } from './add-aptitudetest/add-aptitudetest.component';
import { AppAptitudeTestViewComponent } from './aptitudetest-view/aptitudetest-view.component';
import { AdminAuthGuard } from '../../authguard-admin.guard';

export const AppsRoutes: Routes = [
  {
    path: '',
    children: [   
      {
        path: 'list',
        canActivate: [AdminAuthGuard], // Protect the route
        component: AppAptitudeTestListComponent,
        data: {
          title: 'Aptitiude Tests',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Aptitude Tests' },
          ],
        },
      },
      {
        path: 'start',
        canActivate: [AdminAuthGuard], // Protect the route
        component: AddAptitudeTestComponent,
        data: {
          title: 'Add Aptitude Test',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Start AptitudeTest' },
          ],
        },
      },
      {
        path: 'view/:id',
        canActivate: [AdminAuthGuard], // Protect the route
        component: AppAptitudeTestViewComponent,
        data: {
          title: 'View Aptitude Test',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'View Aptitude Test' },
          ],
        },
      },
    ],
  },
];
