import { Component } from '@angular/core';
import { HRSidebarComponent } from '../../common/sidebar/hr/hr-sidebar.component';

@Component({
  selector: 'app-hr',
  standalone: true,
  templateUrl: './hr.component.html',
  styleUrl: './hr.component.css',
  imports: [HRSidebarComponent]
})
export class HRComponent {

}
