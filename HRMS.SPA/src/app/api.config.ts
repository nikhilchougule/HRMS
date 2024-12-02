import { HttpHeaders } from "@angular/common/http";

export const ApiURL = 'http://localhost:29372'

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
