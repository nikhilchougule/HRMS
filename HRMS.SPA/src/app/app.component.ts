import { Component } from '@angular/core';
import { CommonModule, NgClass, ViewportScroller } from '@angular/common';
import { RouterOutlet, Router, Event, NavigationEnd } from '@angular/router';
import { SidebarComponent } from './common/sidebar/sidebar.component';
import { HeaderComponent } from './common/header/header.component';
import { FooterComponent } from './common/footer/footer.component';
import { CustomizerComponent } from './customizer/customizer.component';
import { CustomizerService } from './customizer/customizer.service';
import { ToggleService } from './common/sidebar/toggle.service';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule, SidebarComponent, HeaderComponent, FooterComponent, CustomizerComponent, NgClass],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})

export class AppComponent {
  title = 'HRMS.SPA';

  // isSidebarToggled
  isSidebarToggled = false;

  // isToggled
  isToggled = false;

  constructor(
    public router: Router,
    private toggleService: ToggleService,
    private viewportScroller: ViewportScroller,
    public themeService: CustomizerService
  ) {
    this.router.events.subscribe((event: Event) => {
      if (event instanceof NavigationEnd) {
        // Scroll to the top after each navigation end
        this.viewportScroller.scrollToPosition([0, 0]);
      }
    });
    this.toggleService.isSidebarToggled$.subscribe(isSidebarToggled => {
      this.isSidebarToggled = isSidebarToggled;
    });
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
  }

}
