import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TotaltestsService } from './totaltests.service';

describe('TotaltestsService', () => {
  let component: TotaltestsService;
  let fixture: ComponentFixture<TotaltestsService>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [TotaltestsService]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TotaltestsService);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
