import { Injectable, Inject, InjectionToken } from '@angular/core';
import { CommonModule, DOCUMENT } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {
  localStorage2: any;

  constructor(@Inject(DOCUMENT) private document: Document) {
     this.localStorage2 = document.defaultView?.localStorage!;
  }

  setItem(key: string, value: any) {
    localStorage.setItem(key, value);
  }

  getItem(key: string): any {
    return localStorage.getItem(key)!;
  }

  clear(): any {
    localStorage.clear();
  }

  setBool(key: string, value: boolean) {
    localStorage.setItem(key, String(value));
  }

  getBool(key: string): boolean {
    return localStorage.getItem(key) === 'true';
  }

  setObject(key: string, value: object) {
    localStorage.setItem(key, JSON.stringify(value));
  }

  getObject(key: string): object {
    return JSON.parse(localStorage.getItem(key)!);
  }
}
