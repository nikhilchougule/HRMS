import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable, signal } from '@angular/core';
import { Observable } from 'rxjs';
import { ApiURL, HttpOptions } from '../../config';
import { ExperienceLevel } from '../../models/selectlist.model';
import { TestCategory } from '../../models/aptitudetest.model';

@Injectable({
  providedIn: 'root',
})

export class SelectListService {


  private experienceLevelData = signal<ExperienceLevel[]>([
    { ID: 1, Name: 'Fresher' },
    { ID: 2, Name: 'Junior' },
    { ID: 3, Name: 'Mid-Level' },
    { ID: 4, Name: 'Senior' },
    { ID: 5, Name: 'Lead' },
  ]);
  get experienceLevel$() {
    return this.experienceLevelData();
  }

  public experienceLevels = [
    { ID: 1, Name: 'Fresher' },
    { ID: 2, Name: 'Junior' },
    { ID: 3, Name: 'Mid-Level' },
    { ID: 4, Name: 'Senior' },
    { ID: 5, Name: 'Lead' },
  ];

  getExperienceLevels(): ExperienceLevel[] {
    return this.experienceLevels;
  }

  constructor(private http: HttpClient) { }

  public getAllTestCategories(): Observable<TestCategory[]> {
    return this.http.get<TestCategory[]>(ApiURL + '/api/TestCategory/GetAllTestCategories');
  }

  public getExperienceLevel(): Observable<ExperienceLevel[]> {
    return this.http.post<ExperienceLevel[]>(ApiURL + '/api/ExperienceLevel/GetAllExperienceLevels', {}, HttpOptions );
  }

  public getSkills(): Observable<ExperienceLevel[]> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    return this.http.post<ExperienceLevel[]>(ApiURL + '/api/Skill/GetAllSkills', {}, HttpOptions);
  }

}
