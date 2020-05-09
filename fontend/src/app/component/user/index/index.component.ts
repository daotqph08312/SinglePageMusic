import { Component, OnInit } from '@angular/core';
import { SongService } from '../../../repository/song.service';
import {Router, ActivatedRoute} from '@angular/router';
import { Song } from '../../../model/song';
import { AlbumService } from '../../../repository/album.service';
import { Album } from '../../../model/album';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {
  listsong: Array<Song> = [];
  listalbum: Array<Album> = [];
  list = [{id: 1,
            name: 'Tran quang dao',
            age: 23
  }];
  constructor(private route: Router,
              private songrepo: SongService,
              private albumrepo: AlbumService,
              private activaterouter: ActivatedRoute) { }

  ngOnInit( ): void {
    this.songrepo.getListSongs().subscribe(data => {
          this.listsong = data;
          console.log(this.listsong);
    });
    this.albumrepo.getListalbum().subscribe(data => {
          this.listalbum = data;
    });
  }


}
