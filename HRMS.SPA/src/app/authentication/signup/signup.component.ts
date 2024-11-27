import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { RouterLink } from '@angular/router';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { NgIf } from '@angular/common';
import { Router } from '@angular/router';
import { CustomizerService } from '../../customizer/customizer.service';

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [RouterLink, MatFormFieldModule, MatInputModule, MatButtonModule, MatCheckboxModule, ReactiveFormsModule, NgIf],
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.scss'
})

export class SignupComponent {

  // isToggled
  isToggled = false;

  constructor(
    private fb: FormBuilder,
    private router: Router,
    public themeService: CustomizerService
  ) {
    this.authForm = this.fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]],
    });
    this.themeService.isToggled$.subscribe(isToggled => {
      this.isToggled = isToggled;
    });
  }

  // Password Hide
  hide = true;

  // Form
  authForm: FormGroup;
  onSubmit() {
    if (this.authForm.valid) {
      this.router.navigate(['/']);
    } else {
      console.log('Form is invalid. Please check the fields.');
    }
  }

}
