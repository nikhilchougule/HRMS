import { AppContactListComponent } from './contact-list.component';
import { Routes } from '@angular/router';


export const AppsRoutes: Routes = [
  {
    path: 'list',
    component: AppContactListComponent,
    data: {
      title: 'Contact List',
      urls: [
        { title: 'Dashboard', url: '/dashboards/admin' },
        { title: 'Contact List' },
      ],
    }
  }
]
