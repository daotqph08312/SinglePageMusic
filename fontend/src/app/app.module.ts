import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {AddPlaylistComponent} from './component/user/add-playlist/add-playlist.component';
import {AlbumComponent  } from './component/user/album/album.component';
import { ArtistComponent } from './component/user/artist/artist.component';
import { BlogComponent} from './component/user/blog/blog.component';
import { BlogSingleComponent } from './component/user/blog-single/blog-single.component';
import {DownloadComponent  } from './component/user/download/download.component';
import { FeaturePlaylistComponent } from './component/user/feature-playlist/feature-playlist.component';
import { FreeMusicComponent } from './component/user/free-music/free-music.component';
import { GenresComponent } from './component/user/genres/genres.component';
import { GenresSingleComponent } from './component/user/genres-single/genres-single.component';
import { IndexComponent } from './component/user/index/index.component';
import { ManageAccountComponent } from './component/user/manage-account/manage-account.component';
import { ProfileComponent } from './component/user/profile/profile.component';
import { StationsComponent} from './component/user/stations/stations.component';
import { TopTrackComponent } from './component/user/top-track/top-track.component';
import { FavouriteComponent } from './component/user/favourite/favourite.component';
import { HistoryComponent } from './component/user/history/history.component';
import { AlbumSingleComponent } from './component/user/album-single/album-single.component';
import { ArtistSingleComponent } from './component/user/artist-single/artist-single.component';
import { UploadComponent } from './component/user/upload/upload.component';
import { DashboardComponent } from './component/admin/dashboard/dashboard.component';
import { HeaderComponent } from './component/user/header/header.component';
import { FooterComponent } from './component/user/footer/footer.component';
import { SidebarComponent } from './component/user/sidebar/sidebar.component';
import { MainListenComponent } from './component/user/main-listen/main-listen.component';
import { LayoutComponent } from './component/user/layout/layout.component';
import { RouterModule } from '@angular/router';
import { PlayComponent } from './component/user/play/play.component';
import { AlbumService} from './repository/album.service';
import { HttpClientModule } from '@angular/common/http';
const Layout = [
  {path: '', component: IndexComponent},
  {path: 'user', component: LayoutComponent,
  children: [
    {path: 'album', component: AlbumComponent},
    {path: 'artist', component : ArtistComponent},
    {path: 'genres' , component : GenresComponent},
    {path: 'toptrack', component : TopTrackComponent},
    {path: 'freemusic', component : FreeMusicComponent},
    {path: 'station' , component : StationsComponent},
    {path: 'dowload' , component: DownloadComponent},
    {path: 'favourite' , component : FavouriteComponent},
    {path: 'history', component: HistoryComponent},
    { path: 'feature_playlist', component: FeaturePlaylistComponent},
    { path: 'addplaylist', component: AddPlaylistComponent}
  ]},
  {path: 'admin', component: DashboardComponent}
];

@NgModule({
  declarations: [
    AppComponent,
    AddPlaylistComponent,
    AlbumComponent,
    AlbumSingleComponent,
    ArtistComponent,
    ArtistSingleComponent,
    BlogComponent,
    BlogSingleComponent,
    DownloadComponent,
    FavouriteComponent,
    FeaturePlaylistComponent,
    FreeMusicComponent,
    GenresComponent,
    GenresSingleComponent,
    HistoryComponent,
    IndexComponent,
    ManageAccountComponent,
    ProfileComponent,
    StationsComponent,
    TopTrackComponent,
    UploadComponent,
    DashboardComponent,
    HeaderComponent,
    FooterComponent,
    SidebarComponent,
    MainListenComponent,
    LayoutComponent,
    PlayComponent


  ],
  imports: [
    BrowserModule,
    AppRoutingModule, HttpClientModule,
    RouterModule.forRoot(Layout)
  ],
  providers: [AlbumService],
  bootstrap: [AppComponent]
})
export class AppModule { }
