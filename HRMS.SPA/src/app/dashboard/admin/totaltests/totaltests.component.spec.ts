import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TotalTestsComponent } from './totaltests.component';

describe('TotalTestsComponent', () => {
  let component: TotalTestsComponent;
  let fixture: ComponentFixture<TotalTestsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [TotalTestsComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TotalTestsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
