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
    this.localStorage2.setItem(key, value);
  }

  getItem(key: string): any {
    return this.localStorage2.getItem(key);
  }

  clear(): any {
    this.localStorage2.clear();
  }

  setBool(key: string, value: boolean) {
    this.localStorage2.setItem(key, String(value));
  }

  getBool(key: string): boolean {
    return this.localStorage2.getItem(key) === 'true';
  }

  setObject(key: string, value: object) {
    this.localStorage2.setItem(key, JSON.stringify(value));
  }

  getObject(key: string): object {
    return JSON.parse(this.localStorage2.getItem(key)!);
  }
}
