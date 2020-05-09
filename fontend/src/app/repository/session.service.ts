import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Session } from '../model/session';
const session = 'http://localhost:8080/Playlistdetail';

@Injectable({
  providedIn: 'root'
})
export class SessionService {
  constructor(private http: HttpClient) { }
  getListSession(): Observable<Session>{
    return this.http.get<Session>(session);
  }
  getSessionById(id: number): Observable<Session>{
    const url = `${session}/${id}`;
    return this.http.get<Session>(url);
  }
  addSession(album): Observable<Session>{
    const url = `${session}/save`;
    return this.http.post<Session>(url, album);
  }
  updateSession(album): Observable<Session>{
    const url = `${session}/update/${album.id}`;
    return this.http.put<Session>(url, album);
  }
  deleteSession(id: number): Observable<Session>{
    const url = `${session}/delete/${id}`;
    return this.http.delete<Session>(url);
  }
}
