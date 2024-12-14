import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { CustomizerService } from '../../services/customizer.service';

@Component({
  selector: 'app-footer',
  standalone: true,
  imports: [RouterLink],
  templateUrl: './footer.component.html',
  styleUrl: './footer.component.scss'
})
export class FooterComponent {

  // isToggled
  isToggled = false;

  constructor(
    public themeService: CustomizerService
  ) {
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
  }

}
