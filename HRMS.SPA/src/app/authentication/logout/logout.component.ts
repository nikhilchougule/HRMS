import { Component, Inject, InjectionToken } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { RouterLink } from '@angular/router';
import { CustomizerService } from '../../customizer/customizer.service';
import { CommonModule, DOCUMENT } from '@angular/common';

@Component({
  selector: 'app-logout',
  standalone: true,
  imports: [RouterLink, MatButtonModule, CommonModule],
  templateUrl: './logout.component.html',
  styleUrl: './logout.component.scss'
})
export class LogoutComponent {

  // isToggled
  isToggled = false;

  constructor(
    public themeService: CustomizerService,
    @Inject(DOCUMENT) private document: Document
  ) {
    const localStorage = document.defaultView?.localStorage!;

    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
    localStorage.clear();
  }

}

