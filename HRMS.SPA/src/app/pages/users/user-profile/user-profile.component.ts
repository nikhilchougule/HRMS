import { Component, signal } from '@angular/core';
import { MaterialModule } from '../../../material.module';
import { takeUntilDestroyed } from '@angular/core/rxjs-interop';
import { TablerIconsModule } from 'angular-tabler-icons';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatRadioModule } from '@angular/material/radio';
import {
  FormControl,
  FormsModule,
  ReactiveFormsModule,
  Validators,
} from '@angular/forms';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { provideNativeDateAdapter } from '@angular/material/core';
import { merge } from 'rxjs';

interface Food {
  value: string;
  viewValue: string;
}

@Component({
  selector: 'app-form-layouts',
  imports: [
    MaterialModule,
    TablerIconsModule,
    MatFormFieldModule,
    MatInputModule,
    MatRadioModule,
    MatCheckboxModule,
    MatDatepickerModule,
    FormsModule,
    ReactiveFormsModule,
  ],
  templateUrl: './user-profile.component.html',
  providers: [provideNativeDateAdapter()],
})
export class UserProfileComponent {
  readonly email = new FormControl('', [Validators.required, Validators.email]);

  errorMessage = signal('');

  constructor() {
    merge(this.email.statusChanges, this.email.valueChanges)
      .pipe(takeUntilDestroyed())
      .subscribe(() => this.updateErrorMessage());
  }

  foods: Food[] = [
    { value: 'steak-0', viewValue: 'One' },
    { value: 'pizza-1', viewValue: 'Two' },
    { value: 'tacos-2', viewValue: 'Three' },
    { value: 'tacos-3', viewValue: 'Four' },
  ];

  selectedFood = this.foods[2].value;

  updateErrorMessage() {
    if (this.email.hasError('required')) {
      this.errorMessage.set('You must enter a value');
    } else if (this.email.hasError('email')) {
      this.errorMessage.set('Not a valid email');
    } else {
      this.errorMessage.set('');
    }
  }
}
