import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Singer } from '../model/singer';
const Singers = 'http://localhost:8080/single';

@Injectable({
  providedIn: 'root'
})

export class SingerService {

  constructor(private http: HttpClient) { }
  getListSingers(): Observable<Singer>{
    return this.http.get<Singer>(Singers);
  }
  getSingersById(id: number): Observable<Singer>{
    const url = `${Singers}/${id}`;
    return this.http.get<Singer>(url);
  }
  addSingers(album): Observable<Singer>{
    const url = `${Singers}/save`;
    return this.http.post<Singer>(url, album);
  }
  updateSingers(album): Observable<Singer>{
    const url = `${Singers}/update/${album.id}`;
    return this.http.put<Singer>(url, album);
  }
  deleteSingers(id: number): Observable<Singer>{
    const url = `${Singers}/delete/${id}`;
    return this.http.delete<Singer>(url);
  }
}
