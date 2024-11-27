import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HireeroleComponent } from './hireerole.component';

describe('HireeroleComponent', () => {
  let component: HireeroleComponent;
  let fixture: ComponentFixture<HireeroleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [HireeroleComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(HireeroleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
