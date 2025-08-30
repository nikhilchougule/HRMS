import { NavItem } from '../../vertical/sidebar/nav-item/nav-item';

export const navItemsApplicant: NavItem[] = [
  {
    navCap: 'Home',
  },
  {
    displayName: 'My',
    iconName: 'home',
    route: 'applicant',
    children: [
      {
        displayName: 'Aptitude Tests',
        iconName: 'point',
        route: '/applicant/aptitudetests',
      }
    ]
  },
]

export const navItemsAdmin: NavItem[] = [
  {
    navCap: 'Home',
  },
  //Hide Dashboard for now
  //{
  //  displayName: 'Dashboards',
  //  iconName: 'home',
  //  route: 'dashboards',
  //  children: [
  //    //{
  //    //  displayName: 'Admin',
  //    //  iconName: 'point',
  //    //  route: 'dashboards/dashboard1',
  //    //},
  //    {
  //      displayName: 'Admin',
  //      iconName: 'point',
  //      route: 'dashboards/admin',
  //    },
  //  ],
  //},
  {
    displayName: 'Configuration',
    iconName: 'apps',
    route: 'apps',
    ddType: '',
    children: [
      //{
      //  displayName: 'Calendar',
      //  iconName: 'point',
      //  route: 'apps/calendar',
      //},
      //{
      //  displayName: 'Skills',
      //  iconName: 'point',
      //  route: 'apps/calendar',
      //},
      //{
      //  displayName: 'Test Categories',
      //  iconName: 'point',
      //  route: 'apps/email/inbox',
      //},
      {
        displayName: 'Users',
        iconName: 'point',
        route: 'configuration/users',
      },
    ],
  },
  {
    displayName: 'Setup Aptitude',
    iconName: 'components',
    route: 'ui-components',
    ddType: '',
    children: [
      //{
      //  displayName: 'Question-Options',
      //  iconName: 'point',
      //  route: 'question-options/list',
      //},
      {
        displayName: 'Aptitude Tests',
        iconName: 'point',
        route: 'aptitudetest/list',
      },
    ],
  }
];
