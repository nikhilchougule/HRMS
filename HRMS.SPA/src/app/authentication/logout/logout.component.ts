import { Component, Inject, InjectionToken } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { RouterLink } from '@angular/router';
import { CustomizerService } from '../../customizer/customizer.service';
import { CommonModule, DOCUMENT } from '@angular/common';
import { LocalStorageService } from '../../services/localstorage.service';

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
    public localStorageService: LocalStorageService
  ) {
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
    console.log('in logout jwt token' + localStorageService.getItem('JwtToken'));
    localStorageService.clear();
    console.log('in logout jwt token after clear()' + localStorageService.getItem('JwtToken'));
  }

}

