import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Song } from '../model/song';
const Songs = 'http://localhost:8080/song';
@Injectable({
  providedIn: 'root'
})


export class SongService {

  constructor(private http: HttpClient) { }
  getlistSongbyAlbum(id): Observable<Array<Song>> {
    const url = `http://localhost:8080/song/album/${id}`;
    return this.http.get<Array<Song>> (url);
  }
  getListSongs(): Observable<Array<Song>>{
    const url = 'http://localhost:8080/song/';
    return this.http.get<Array<Song>>(url);
  }
  getSongsById(id: number): Observable<Song>{
    const url = `${Songs}/${id}`;
    return this.http.get<Song>(url);
  }
  addSongs(album): Observable<Song>{
    const url = `${Songs}/save`;
    return this.http.post<Song>(url, album);
  }
  updateSongs(album): Observable<Song>{
    const url = `${Songs}/update/${album.id}`;
    return this.http.put<Song>(url, album);
  }
  deleteSongs(id: number): Observable<Song>{
    const url = `${Songs}/delete/${id}`;
    return this.http.delete<Song>(url);
  }
}
