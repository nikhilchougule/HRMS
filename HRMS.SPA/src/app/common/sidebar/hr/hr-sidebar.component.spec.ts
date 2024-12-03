import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HRSidebarComponent } from './hr-sidebar.component';

describe('HRSidebarComponent', () => {
  let component: HRSidebarComponent;
  let fixture: ComponentFixture<HRSidebarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [HRSidebarComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(HRSidebarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
