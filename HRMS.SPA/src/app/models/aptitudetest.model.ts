import { User } from "./user.model";

export class AptitudeTest {
  public ID: number;
  public User: User;
  public Test: Test;
  public completed: boolean = false;
  public action?: string;
  constructor() {
    this.ID = 0
    this.User = new User();
    this.Test = new Test();
    this.completed = false;
    this.action = '';
  }
}

export class Test {
  public ID: number;
  public Name: string;
  public ApplicantName: string;
  public CreatedByID: number;
  public Status: Status;
  public UserID: number;
  public CreatedDate: Date;
  public UpdatedDate: Date;
  public TestDetail: TestDetail[];

  constructor() {
    this.ID = 0;
    this.Name = '';
    this.ApplicantName = '';
    this.CreatedByID = 0;
    this.UserID = 0;
    this.CreatedDate = new Date(),
    this.UpdatedDate = new Date(),
    this.Status = new Status();
    this.TestDetail = new Array<TestDetail>();
  }
}

export class Status {
  public ID: number;
  public Name: string;
  constructor() {
    this.ID = 0;
    this.Name = '';
  }
}

export class TestResult {
  public ID: number;
  public Name: string;
  constructor() {
    this.ID = 0;
    this.Name = '';
  }
}

export class TestCategory {
  public ID: number;
  public Name: string;
  constructor() {
    this.ID = 0;
    this.Name = '';
  }
}

export class Question {
  public ID: number;
  public Name: string;
  public Options: Option[];
  TestCategory: TestCategory;
  constructor() {
    this.ID = 0;
    this.Name = '';
    this.TestCategory = new TestCategory();
    this.Options = new Array<Option>();
  }
}

export class Option {
  public ID: number;
  public Name: string;
  public Question: Question;
  constructor() {
    this.ID = 0;
    this.Name = '';
    this.Question = new Question();
  } 
}

export class TestDetail {
  public ID?: number;
  public TestCategory: TestCategory;
  public TestResult: TestResult;
  public TimeOut: number;
  public QuestionsCount: number;
  public TestDetailQuestionOption: TestDetailQuestionOption[];
  public StartTime: Date;
  public EndTime: Date;

  constructor() {
    this.ID = 0;
    this.TestCategory = new TestCategory();
    this.TestResult = new TestResult();
    this.TimeOut = 0;
    this.QuestionsCount = 0;
    this.TestDetailQuestionOption = new Array<TestDetailQuestionOption>();
    this.StartTime = new Date();
    this.EndTime = new Date();
  }
}

export class TestDetailQuestionOption {
  public TestDetail: TestDetail;
  public Question: Question;
  //public Options: Option;

  constructor() {
    this.TestDetail = new TestDetail();
    this.Question = new Question();
   /* this.Options = new Option();*/
  }
}

export class ApplicantAptitudeTest {
  public ID: number;
  public Name: string;
  public TotalTestTimeout: number;
  public CreatedDate: Date;
  public TestDetail: TestDetail[];

  constructor() {
    this.ID = -1;
    this.Name = '';
    this.TotalTestTimeout = 0;
    this.TestDetail = new Array<TestDetail>();
    this.CreatedDate = new Date();
  }
}
//{
//  "User": {
//    "ID": 1,
//      "Name": "Nikhil Amar Chougule",
//        "Email": null,
//          "MobileNumber": null,
//            "IsActive": false,
//              "IsApproved": false,
//                "CreatedDate": "0001-01-01T00:00:00",
//                  "UpdatedDate": "0001-01-01T00:00:00",
//                    "UserProfile": {
//      "ID": 0,
//        "Company": null,
//          "Designation": null,
//            "TotalExperience": 0,
//              "ExperienceLevel": {
//        "ID": null,
//          "Name": null
//      }
//    },
//    "Roles": [],
//      "Skills": [],
//        "Role": ""
//  },
//  "Test": {
//    "ID": 1,
//      "UserID": 1,
//        "Name": "App Test",
//          "CreatedDate": "2025-03-10T22:11:38.58",
//            "UpdatedDate": "0001-01-01T00:00:00",
//              "CreatedByID": 2,
//                "TestResultID": 0,
//                  "TestResult": {
//      "ID": 1,
//        "Name": "Pending"
//    }
//  }
