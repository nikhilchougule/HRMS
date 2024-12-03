import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TotaltestsComponent } from './totaltests.component';

describe('TotaltestsComponent', () => {
  let component: TotaltestsComponent;
  let fixture: ComponentFixture<TotaltestsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [TotaltestsComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TotaltestsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
