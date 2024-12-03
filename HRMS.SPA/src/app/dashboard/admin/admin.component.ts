import { Component } from '@angular/core';
import { TotalTestsComponent } from './totaltests/totaltests.component';
import { AdminSidebarComponent } from '../../common/sidebar/admin/admin-sidebar.component';

@Component({
  selector: 'app-admin',
  standalone: true,
  templateUrl: './admin.component.html',
  styleUrl: './admin.component.css',
  imports: [TotalTestsComponent, AdminSidebarComponent]
})
export class AdminComponent {

}
