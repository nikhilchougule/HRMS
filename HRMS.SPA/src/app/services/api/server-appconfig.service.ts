import { Injectable, signal } from '@angular/core';
import { Observable } from 'rxjs';
import { ApiURL, HttpOptions } from '../../config';
import { HttpClient } from '@angular/common/http';
import { ServerAppConfig } from '../../models/server-appconfig.model';

@Injectable({
  providedIn: 'root',
})
export class ServerAppConfigService {
  constructor(private http: HttpClient) { }

  public getAppConfiguration(): Observable<ServerAppConfig> {
    return this.http.get<ServerAppConfig>(ApiURL + '/api/AppConfiguration/Get', HttpOptions);
  }
}
