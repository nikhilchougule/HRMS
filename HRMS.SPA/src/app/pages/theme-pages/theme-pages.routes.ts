import { Routes } from '@angular/router';

// theme pages
import { AppAccountSettingComponent } from './account-setting/account-setting.component';
import { AppFaqComponent } from './faq/faq.component';
import { AppPricingComponent } from './pricing/pricing.component';
import { AppTreeviewComponent } from './treeview/treeview.component';

export const ThemePagesRoutes: Routes = [
  {
    path: '',
    children: [
      {
        path: 'account',
        component: AppAccountSettingComponent,
        data: {
          title: 'Account Setting',
          urls: [
          /*  { title: 'Dashboard', url: '/dashboards/admin' },*/
            { title: 'Account Setting' },
          ],
        },
      },
      {
        path: 'faq',
        component: AppFaqComponent,
        data: {
          title: 'FAQ',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'FAQ' },
          ],
        },
      },
      {
        path: 'pricing',
        component: AppPricingComponent,
        data: {
          title: 'Pricing',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Pricing' },
          ],
        },
      },
      {
        path: 'treeview',
        component: AppTreeviewComponent,
        data: {
          title: 'Treeview',
          urls: [
            { title: 'Dashboard', url: '/dashboards/admin' },
            { title: 'Treeview' },
          ],
        },
      },
    ],
  },
];
