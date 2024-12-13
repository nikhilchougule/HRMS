import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UserHireeComponent } from './user-hiree.component';

describe('UserHireeComponent', () => {
  let component: UserHireeComponent;
  let fixture: ComponentFixture<UserHireeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [UserHireeComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(UserHireeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
