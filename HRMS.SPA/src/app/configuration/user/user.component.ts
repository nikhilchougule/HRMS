import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatMenuModule } from '@angular/material/menu';
import { MatTabsModule } from '@angular/material/tabs';
import { RouterLink, RouterOutlet } from '@angular/router';
import { AllUsersComponent } from './all-users/all-users.component';
import { UserAdminComponent } from './user-admin/user-admin.component';
import { UserEmployeeComponent } from './user-employee/user-employee.component';
import { UserHireeComponent } from './user-hiree/user-hiree.component';
import { UserHrComponent } from './user-hr/user-hr.component';
import { CustomizerService } from '../../customizer/customizer.service';
import { AdminSidebarComponent } from '../../common/sidebar/admin/admin-sidebar.component';

@Component({
  selector: 'app-user',
  standalone: true,
  imports: [RouterLink, RouterOutlet, MatCardModule, MatMenuModule, MatButtonModule, MatTabsModule, AdminSidebarComponent, AllUsersComponent, UserAdminComponent, UserEmployeeComponent, UserHireeComponent, UserHrComponent],
  templateUrl: './user.component.html',
  styleUrl: './user.component.scss'
})
export class UserComponent {
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
