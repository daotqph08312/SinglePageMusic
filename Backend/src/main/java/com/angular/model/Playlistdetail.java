package com.angular.model;
// Generated Apr 30, 2020 5:58:29 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Playlistdetail generated by hbm2java
 */
@Entity
@Table(name = "playlistdetail", catalog = "singlepagemusic")
public class Playlistdetail implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Playlist playlist;
	private Song song;

	public Playlistdetail() {
	}

	public Playlistdetail(Playlist playlist, Song song) {
		this.playlist = playlist;
		this.song = song;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@JsonIgnore 
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPlaylist", nullable = false)
	public Playlist getPlaylist() {
		return this.playlist;
	}

	public void setPlaylist(Playlist playlist) {
		this.playlist = playlist;
	}
	@JsonIgnore 
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idsong", nullable = false)
	public Song getSong() {
		return this.song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

}