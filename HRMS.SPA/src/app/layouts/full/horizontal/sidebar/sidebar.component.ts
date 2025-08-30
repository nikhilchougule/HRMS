import {
  Component,
  OnInit,
  Input,
  ChangeDetectorRef,
  OnChanges,
} from '@angular/core';
import { navItemsAdmin, navItemsApplicant } from './sidebar-data';
import { Router } from '@angular/router';
import { NavService } from '../../../../services/nav.service';
import { MediaMatcher } from '@angular/cdk/layout';
import { AppHorizontalNavItemComponent } from './nav-item/nav-item.component';
import { CommonModule } from '@angular/common';
import { LocalStorageService } from '../../../../services/common/local-storage.service';


@Component({
    selector: 'app-horizontal-sidebar',
    imports: [AppHorizontalNavItemComponent, CommonModule],
    templateUrl: './sidebar.component.html'
})
export class AppHorizontalSidebarComponent implements OnInit {
  navItems: any;
  parentActive = '';

  mobileQuery: MediaQueryList;
  private _mobileQueryListener: () => void;

  constructor(
    public navService: NavService,
    public router: Router,
    media: MediaMatcher,
    changeDetectorRef: ChangeDetectorRef,
    private _localStorageService: LocalStorageService
  ) {

    console.log('in horizontal sidebar load menu get role from local storage' + _localStorageService.getItem('UserRole') + ' type of' + typeof _localStorageService.getItem('UserRole'));
    console.log('navItems Admin' + JSON.stringify(navItemsAdmin));
    console.log('navItems Applicant' + JSON.stringify(navItemsApplicant));

    if (_localStorageService.getItem('UserRole') === 'Applicant') {
      this.navItems = navItemsApplicant;
    } else if (_localStorageService.getItem('UserRole') === 'Administrator') {
      this.navItems = navItemsAdmin;
    } else if (_localStorageService.getItem('UserRole') === 'HR') {
      this.navItems = navItemsAdmin;
    } else {
      this.navItems = navItemsAdmin;
    }
    
    this.mobileQuery = media.matchMedia('(min-width: 1100px)');
    this._mobileQueryListener = () => changeDetectorRef.detectChanges();
    this.mobileQuery.addListener(this._mobileQueryListener);
    this.router.events.subscribe(
      () => (this.parentActive = this.router.url.split('/')[1])
    );
  }

  ngOnInit(): void { }
}
