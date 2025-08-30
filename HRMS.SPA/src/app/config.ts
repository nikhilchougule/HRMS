import { HttpHeaders } from "@angular/common/http";

//export const ApiURL = 'http://localhost:29372';

//export const ApiURL = 'http://localhost/HRMS.API';

export let ApiURL: string = '';

export function loadConfig(): Promise<void> {
  return fetch('./assets/config.json')
    .then(response => response.json())
    .then(config => {
      console.log('API Config loaded:', config); 
      ApiURL = config.ApiURL;
    });
}

export const HttpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE',
    'key': 'x-api-key',
    'value': 'NNctr6Tjrw9794gFXf3fi6zWBZ78j6Gv3UCb3y0x',
  })
};

//export const APIToken: string = '';
export class APIToken {
  private Jwt: string;

  constructor(Jwt: string) {
    this.Jwt = Jwt
  }
  public getJwt() {
    return this.Jwt;
  }
}

export interface AppSettings {
  dir: 'ltr' | 'rtl';
  theme: string;
  sidenavOpened: boolean;
  sidenavCollapsed: boolean;
  boxed: boolean;
  horizontal: boolean;
  activeTheme: string;
  language: string;
  cardBorder: boolean;
  navPos: 'side' | 'top';
}

export const defaults: AppSettings = {
  dir: 'ltr',
  theme: 'light',
  sidenavOpened: false,
  sidenavCollapsed: false,
  boxed: true,
  horizontal: true,
  cardBorder: false,
  activeTheme: 'blue_theme',
  language: 'en-us',
  navPos: 'side',
};
