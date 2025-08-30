import { Routes } from '@angular/router';

// dashboards
import { AppDashboard1Component } from './dashboard1/dashboard1.component';
import { AppDashboard2Component } from './dashboard2/dashboard2.component';
import { AdminAuthGuard } from '../../authguard-admin.guard';

export const DashboardsRoutes: Routes = [
  {
    path: '',
    children: [
      //{
      //  path: 'dashboard1',
      //  component: AppDashboard1Component,
      //  data: {
      //    title: 'Analytical',
      //    urls: [
      //      { title: 'Dashboard', url: '/dashboards/dashboard1' },
      //      { title: 'Analytical' },
      //    ],
      //  },
      //},
      {
        path: 'admin',
        component: AppDashboard2Component,
        canActivate: [AdminAuthGuard], // Protect the route
        data: {
          title: 'Admin Dashboard',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Admin Dashboard' },
          ],
        },
      },
    ],
  },
];
