import { Routes } from '@angular/router';

import { UsersComponent } from './users.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { AdminAuthGuard } from '../../authguard-admin.guard';

export const AppsRoutes: Routes = [
  {
    path: '',
    children: [   
      {
        path: 'users',
        component: UsersComponent,
        canActivate: [AdminAuthGuard], // Protect the route
        data: {
          title: 'Users',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Users' },
          ],
        },
      },
      {
        path: 'profile',
        component: UserProfileComponent,
        canActivate: [AdminAuthGuard], // Protect the route
        data: {
          title: 'Complete your Profile',
          urls: [
      /*      { title: 'Dashboard', url: '/dashboards/dashboard1' },*/
            { title: 'Users' },
          ],
        },
      },    
    ],
  },
];
