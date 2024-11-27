import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HireeComponent } from './hiree.component';

describe('HireeComponent', () => {
  let component: HireeComponent;
  let fixture: ComponentFixture<HireeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [HireeComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(HireeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
