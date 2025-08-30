import { ExperienceLevel, Role, Skill } from "./selectlist.model";


export class UserProfile {
  public ID?: number;
  public Company?: string;
  public Designation?: string;
  public TotalExperience?: number;
  public ExperienceLevel?: ExperienceLevel;

  constructor() {
    this.ID = 0;
    this.Company = '';
    this.Designation = '';
    this.TotalExperience = 0;
    this.ExperienceLevel = new ExperienceLevel();
  }
}

export class User {
  public ID: number;
  public Name: string;
  public Email: string;
  public MobileNumber: string;
  public imgSrc: string;
  public IsActive: boolean;
  public IsApproved: boolean;
  public UserProfile: UserProfile;
  public Skills: Array<Skill>;
  public Roles: Array<Role>;
  public CreatedDate: string;
  public UpdatedDate: string;
  public action?: string;
  public Role: string;

  constructor() {
    this.ID = 0;
    this.Name = '';
    this.Email = '';
    this.MobileNumber = '';
    this.imgSrc = '';
    this.IsActive = false;
    this.IsApproved = false;
    this.UserProfile = new UserProfile();
    this.Skills = [];
    this.Roles = [];
    this.CreatedDate = '';
    this.UpdatedDate = '';
    this.action = '';
    this.Role = '';
  }
}

export class UpdateUser {
  public ID: number;
  public Name: string;
  public Email: string;
  public MobileNumber: string;
  public IsActive: boolean;
  public IsApproved: boolean;
  public UserProfile: UserProfile;
  public Skills: Array<string>;
  public Role: string;
  public CreatedDate: Date;
  public UpdatedDate: Date;
}
