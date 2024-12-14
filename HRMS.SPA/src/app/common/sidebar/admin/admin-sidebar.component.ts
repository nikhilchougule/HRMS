import { Component } from '@angular/core';
import { NgScrollbarModule } from 'ngx-scrollbar';
import { MatExpansionModule } from '@angular/material/expansion';
import { RouterLink, RouterLinkActive, RouterModule } from '@angular/router';
import { ToggleService } from '../../../services/toggle.service';
import { NgClass } from '@angular/common';
import { CustomizerService } from '../../../services/customizer.service';

@Component({
  selector: 'app-admin-sidebar',
  standalone: true,
  imports: [NgScrollbarModule, MatExpansionModule, RouterLinkActive, RouterModule, RouterLink, NgClass],
  templateUrl: './admin-sidebar.component.html',
  styleUrl: './admin-sidebar.component.scss'
})
export class AdminSidebarComponent {

  // isSidebarToggled
  isSidebarToggled = false;

  // isToggled
  isToggled = false;

  constructor(
    private toggleService: ToggleService,
    public themeService: CustomizerService
  ) {
    this.toggleService.isSidebarToggled$.subscribe(isSidebarToggled => {
      this.isSidebarToggled = isSidebarToggled;
    });
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
  }

  // Burger Menu Toggle
  toggle() {
    this.toggleService.toggle();
  }

  // Mat Expansion
  panelOpenState = true;

}
