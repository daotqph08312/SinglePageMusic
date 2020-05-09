import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Playlist } from '../model/playlist';
const playlists = 'http://localhost:8080/playlist';

@Injectable({
  providedIn: 'root'
})
export class PlaylistService {

  constructor(private http: HttpClient) { }
  getListplaylist(): Observable<Playlist>{
    return this.http.get<Playlist>(playlists);
  }
  getplaylistById(id: number): Observable<Playlist>{
    const url = `${playlists}/${id}`;
    return this.http.get<Playlist>(url);
  }
  addplaylist(album): Observable<Playlist>{
    const url = `${playlists}/save`;
    return this.http.post<Playlist>(url, album);
  }
  updateplaylist(album): Observable<Playlist>{
    const url = `${playlists}/update/${album.id}`;
    return this.http.put<Playlist>(url, album);
  }
  deleteplaylist(id: number): Observable<Playlist>{
    const url = `${playlists}/delete/${id}`;
    return this.http.delete<Playlist>(url);
  }
}
