import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import {Category} from '../model/category';
const categorys = 'http://localhost:8080/category';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(private http: HttpClient) { }
  getListCategory(): Observable<Category>{
    return this.http.get<Category>(categorys);
  }
  getCategoryById(id: number): Observable<Category>{
    const url = `${categorys}/${id}`;
    return this.http.get<Category>(url);
  }
  addCategory(album): Observable<Category>{
    const url = `${categorys}/save`;
    return this.http.post<Category>(url, album);
  }
  updateCategory(album): Observable<Category>{
    const url = `${categorys}/update/${album.id}`;
    return this.http.put<Category>(url, album);
  }
  deleteCategory(id: number): Observable<Category>{
    const url = `${categorys}/delete/${id}`;
    return this.http.delete<Category>(url);
  }
}
