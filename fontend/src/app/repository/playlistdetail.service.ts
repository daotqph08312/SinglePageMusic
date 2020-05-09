import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Playlistdetail } from '../model/playlistdetail';
const playlists = 'http://localhost:8080/Playlistdetail';

@Injectable({
  providedIn: 'root'
})
export class PlaylistdetailService {

  constructor(private http: HttpClient) { }
  getListPlaylistdetail(): Observable<Playlistdetail>{
    return this.http.get<Playlistdetail>(playlists);
  }
  getPlaylistdetailById(id: number): Observable<Playlistdetail>{
    const url = `${playlists}/${id}`;
    return this.http.get<Playlistdetail>(url);
  }
  addPlaylistdetail(album): Observable<Playlistdetail>{
    const url = `${playlists}/save`;
    return this.http.post<Playlistdetail>(url, album);
  }
  updatePlaylistdetail(album): Observable<Playlistdetail>{
    const url = `${playlists}/update/${album.id}`;
    return this.http.put<Playlistdetail>(url, album);
  }
  deletePlaylistdetail(id: number): Observable<Playlistdetail>{
    const url = `${playlists}/delete/${id}`;
    return this.http.delete<Playlistdetail>(url);
  }
}
