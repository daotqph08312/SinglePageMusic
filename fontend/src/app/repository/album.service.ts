import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Album } from '../model/album';
const AlbumAPI = 'http://localhost:8080/album';

@Injectable({
  providedIn: 'root'
})

export class AlbumService {

  constructor(private http: HttpClient) { }
  getListalbum(): Observable<Array<Album>>{
    const url = 'http://localhost:8080/album/';
    return this.http.get<Array<Album>>(url);
  }
  getAlbumById(id: number): Observable<Album>{
    const url = `${AlbumAPI}/${id}`;
    return this.http.get<Album>(url);
  }
  addAlbum(album): Observable<Album>{
    const url = `${AlbumAPI}save`;
    return this.http.post<Album>(url, album);
  }
  updateAlbum(album): Observable<Album>{
    const url = `${AlbumAPI}/update/${album.id}`;
    return this.http.put<Album>(url, album);
  }
  deleteAlbum(id: number): Observable<Album>{
    const url = `${AlbumAPI}/delete/${id}`;
    return this.http.delete<Album>(url);
  }
}
