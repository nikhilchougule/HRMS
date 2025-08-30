import { Injectable, signal } from '@angular/core';
import { Observable } from 'rxjs';
import { ApiURL, HttpOptions } from '../../config';
import { HttpClient } from '@angular/common/http';
import { ApplicantAptitudeTest, Test, TestDetail } from '../../models/aptitudetest.model';

@Injectable({
  providedIn: 'root',
})
export class ApplicantAptitudeTestService {

  private applicantTestID: number | null = null;

  constructor(private http: HttpClient) {
  }

  clearApplicantTestID(): void {
    this.applicantTestID = null;
  }

  setApplicantTestID(id: number): void {
    this.applicantTestID = id;
  }

  getApplicantTestID(): number | null {
    return this.applicantTestID;
  }

  public getAllApplicantAptitudeTestsFromServer(applicantID: number): Observable<ApplicantAptitudeTest[]> {
    return this.http.get<ApplicantAptitudeTest[]>(`${ApiURL}/api/AptitudeTest/GetApplicantAptitudeTests/${applicantID}`, HttpOptions);
  }

  public getAptitudeTest(testID: number): Observable<Test> {
    return this.http.get<Test>(`${ApiURL}/api/AptitudeTest/GetAptitudeTest/${testID}`, HttpOptions);
  }

  public getAptitudeTestQuestionAnswers(testDetailID: number): Observable<TestDetail> {
    return this.http.get<TestDetail>(`${ApiURL}/api/AptitudeTest/GetAptitudeTestByTestDetailID/${testDetailID}`, HttpOptions);
  }

  public getCheckQuestionAnswer(testDetailID: number, questionID: number, optionID: number): Observable<any>{
    return this.http.get(`${ApiURL}/api/AptitudeTest/AnswerQuestionOption/${testDetailID}/${questionID}/${optionID}`, HttpOptions);
  }

  public postTestStatus(ID: number, testType: string, status: string): Observable<any> {
    return this.http.get(`${ApiURL}/api/AptitudeTest/ProcessTestStatus/${ID}/${testType}/${status}`, HttpOptions);
  }

  public postSubmitTestDetail(ID: number,): Observable<any> {
    return this.http.get(`${ApiURL}/api/AptitudeTest/SubmitTestDetail/${ID}`, HttpOptions);
  }

  public getAllApplicantAptitudeTests(applicantID: number) {
    return new Observable<ApplicantAptitudeTest[]>((observer) => {
      this.getAllApplicantAptitudeTestsFromServer(applicantID).subscribe({
        next: (response) => {
          observer.next(response);
          observer.complete();
        },
        error: (err) => {
          console.error('something wrong occurred: ' + err);
          observer.error(err);
        }
      });
    });
  }

}

