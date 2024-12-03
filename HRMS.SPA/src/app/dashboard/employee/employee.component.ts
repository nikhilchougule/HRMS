import { Component } from '@angular/core';
import { EmployeeSidebarComponent } from '../../common/sidebar/employee/employee-sidebar.component';

@Component({
  selector: 'app-employee',
  standalone: true,
  templateUrl: './employee.component.html',
  styleUrl: './employee.component.css',
  imports: [EmployeeSidebarComponent]
})
export class EmployeeComponent {

}
