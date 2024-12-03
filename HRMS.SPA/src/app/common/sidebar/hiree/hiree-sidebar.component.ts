import { Component } from '@angular/core';
import { NgScrollbarModule } from 'ngx-scrollbar';
import { MatExpansionModule } from '@angular/material/expansion';
import { RouterLink, RouterLinkActive, RouterModule } from '@angular/router';
import { ToggleService } from '../toggle.service';
import { NgClass } from '@angular/common';
import { CustomizerService } from '../../../customizer/customizer.service';

@Component({
  selector: 'app-hiree-sidebar',
  standalone: true,
  imports: [NgScrollbarModule, MatExpansionModule, RouterLinkActive, RouterModule, RouterLink, NgClass],
  templateUrl: './hiree-sidebar.component.html',
  styleUrl: './hiree-sidebar.component.scss'
})
export class HireeSidebarComponent {

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
