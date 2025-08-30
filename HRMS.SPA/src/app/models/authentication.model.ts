import { UserProfile } from "./user.model";

export class UserSigninRequest {
  public Email?: string;
  public Password?: string;

  public constructor(Email: string, Password: string) {
    this.Email = Email,
      this.Password = Password
  }
}

export class UserSigninResponse {
  public Name?: string;
  public UserID?: string;
  public Email?: string;
  public Password?: string;
  public Mobilenumber?: string;
  public JwtToken?: string;
  public Roles?: Array<string> = [];
  public UserProfile?: UserProfile;
  public IsError?: boolean;
  public IsValid?: boolean;
  public ErrorMessages?: Array<string> = []
}

export class UserSignupRequest {
  public Name?: string;
  public Email?: string;
  public MobileNumber?: string;
  public Password?: string;
  public Administrator?: boolean;
  public Employee?: boolean;
  public HR?: boolean;
  public isApplicantRegistration: boolean = false;

  public constructor(Name: string, Email: string, MobileNumber: string, Password: string, Administrator: boolean, Employee: boolean, HR: boolean, isApplicantRegistration: boolean) {
    this.Name = Name;
    this.Email = Email;
    this.MobileNumber = MobileNumber;
    this.Password = Password;
    this.Administrator = Administrator;
    this.Employee = Employee;
    this.HR = HR;
    this.isApplicantRegistration = isApplicantRegistration;
  }
}

export class UserSignupResponse {
  public Name?: string;
  public Email?: string;
  public MobileNumber?: string;
  public IsError?: boolean;
  public ErrorMessages?: string[];
}

