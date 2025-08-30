import { Injectable, signal } from '@angular/core';
import { Observable } from 'rxjs';
import { ApiURL, HttpOptions } from '../../config';
import { User } from '../../models/user.model';
import { HttpClient } from '@angular/common/http';
import { AptitudeTest, Test } from '../../models/aptitudetest.model';

@Injectable({
  providedIn: 'root',
})
export class AptitudeTestService {
  constructor(private http: HttpClient) { }

  public  getAllAptitudeTests(): Observable<AptitudeTest[]> {
    return this.http.get<AptitudeTest[]>(ApiURL + '/api/AptitudeTest/GetAllAptitudeTests');
  }

  public getAptitudeTest(aptitudeTestID: number): Observable<Test> {
    return this.http.get<Test>(`${ApiURL}/api/AptitudeTest/GetAptitudeTest/${aptitudeTestID}`, HttpOptions);
  }

  public deleteAptitudeTest(aptitudeTestID: number): Observable<number[]> {
    return this.http.get<[]>(`${ApiURL}/api/AptitudeTest/DeleteAptitudeTest/${aptitudeTestID}`, HttpOptions);
  }

  public addAptitudeTest(aptitudeTest: Test): Observable<Test[]> {
    return this.http.post<[]>(ApiURL + '/api/AptitudeTest/AddAptitudeTest', JSON.stringify(aptitudeTest), HttpOptions);
  }

}
