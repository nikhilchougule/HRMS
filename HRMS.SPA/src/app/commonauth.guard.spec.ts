import { TestBed } from '@angular/core/testing';
import { CanActivateFn } from '@angular/router';

import { commonauthGuard } from './commonauth.guard';

describe('commonauthGuard', () => {
  const executeGuard: CanActivateFn = (...guardParameters) => 
      TestBed.runInInjectionContext(() => commonauthGuard(...guardParameters));

  beforeEach(() => {
    TestBed.configureTestingModule({});
  });

  it('should be created', () => {
    expect(executeGuard).toBeTruthy();
  });
});
