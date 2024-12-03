import { Component } from '@angular/core';
import { HireeSidebarComponent } from '../../common/sidebar/hiree/hiree-sidebar.component';

@Component({
  selector: 'app-hiree',
  standalone: true,
  templateUrl: './hiree.component.html',
  styleUrl: './hiree.component.css',
  imports: [HireeSidebarComponent]
})
export class HireeComponent {

}
