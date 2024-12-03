import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { MatMenuModule } from '@angular/material/menu';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { TotalTestsService } from '../../../services/visualizations/totaltests/totaltests.service';

@Component({
  selector: 'app-total-tests',
  standalone: true,
  imports: [MatCardModule, MatMenuModule, MatButtonModule, RouterLink],
  templateUrl: './totaltests.component.html',
  styleUrl: './totaltests.component.scss'
})
export class TotalTestsComponent {
  constructor(private totalTestsService: TotalTestsService) { }

  ngOnInit(): void {
    this.totalTestsService.loadChart();
  }
}
