import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HireeSidebarComponent } from './hiree-sidebar.component';

describe('HireeSidebarComponent', () => {
  let component: HireeSidebarComponent;
  let fixture: ComponentFixture<HireeSidebarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [HireeSidebarComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(HireeSidebarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
