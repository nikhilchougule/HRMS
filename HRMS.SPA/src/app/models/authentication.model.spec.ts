import { UserSigninRequest } from './authentication.model';

describe('User Signin Request Parameters', () => {
  it('should create an instance', () => {
    expect(new UserSigninRequest("Email", "Password")).toBeTruthy();
  });
});
