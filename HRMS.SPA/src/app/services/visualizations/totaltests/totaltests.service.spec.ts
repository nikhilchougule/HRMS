import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TotalTestsService } from './totaltests.service';

describe('TotalTestsService', () => {
  let component: TotalTestsService;
  let fixture: ComponentFixture<TotalTestsService>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [TotalTestsService]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TotalTestsService);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
