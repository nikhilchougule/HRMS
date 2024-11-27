import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SetupaptitudeComponent } from './setupaptitude.component';

describe('SetupaptitudeComponent', () => {
  let component: SetupaptitudeComponent;
  let fixture: ComponentFixture<SetupaptitudeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [SetupaptitudeComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(SetupaptitudeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
