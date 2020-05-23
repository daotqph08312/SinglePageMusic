import { Component, OnInit } from '@angular/core';
import { Album } from '../../../model/album';
import { Song } from '../../../model/song';
import {Router, ActivatedRoute} from '@angular/router';
import { SongService } from '../../../repository/song.service';
import { AlbumService } from '../../../repository/album.service';
@Component({
  selector: 'app-listdetail',
  templateUrl: './listdetail.component.html',
  styleUrls: ['./listdetail.component.css']
})
export class ListdetailComponent implements OnInit {
  Album = new Album();
  listSong: Array<Song> = [];
  constructor(  private activate: ActivatedRoute,
                private route: Router,
                private song: SongService,
                private album: AlbumService ) { }

  ngOnInit(): void {
      this.activate.paramMap.subscribe( param => {
        const id = param.get('id');
        this.getAlbum(id);
        this.getListSongbyAlbum(id);
      });
  }
  getAlbum(id){
    this.album.getAlbumById(id).subscribe ( data => {
        this.Album = data;
    });
  }
  getListSongbyAlbum(id){
    this.song.getlistSongbyAlbum(id).subscribe(data => {
      console.log(data);
      this.listSong = data;
    });
  }
}
