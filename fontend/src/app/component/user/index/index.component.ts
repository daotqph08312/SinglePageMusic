import { Component, OnInit } from '@angular/core';
import { SongService } from '../../../repository/song.service';
import {Router, ActivatedRoute} from '@angular/router';
import { Song } from '../../../model/song';
import { AlbumService } from '../../../repository/album.service';
import { Album } from '../../../model/album';
import { Singer } from '../../../model/singer';
import { SingerService } from '../../../repository/singer.service';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {
  listsong: Array<Song> = [];
  listalbum: Array<Album> = [];
  listSingle: Array<Singer> = [];
  constructor(private route: Router,
              private songrepo: SongService,
              private albumrepo: AlbumService,
              private activaterouter: ActivatedRoute,
              private singerepo: SingerService) { }

  ngOnInit( ): void {

this.getlistsong();
this.getlistAlbum();
this.getlistSinger();
  }
getlistsong(){
  this.songrepo.getListSongs().subscribe(data => {
    this.listsong = data;
    console.log(this.listsong);
});
}
getlistAlbum(){
  this.albumrepo.getListalbum().subscribe(data => {
    this.listalbum = data;
});
}
getlistSinger(){
  this.singerepo.getListSingers().subscribe( data => {
      this.listSingle = data;
      console.log(this.listSingle);
  });
}

}
