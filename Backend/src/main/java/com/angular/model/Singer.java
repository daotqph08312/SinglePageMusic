package com.angular.model;
// Generated Apr 30, 2020 5:58:29 PM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * Singer generated by hbm2java
 */
@Entity
@Table(name = "singer", catalog = "singlepagemusic")
public class Singer implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	  Integer id;
	  String name;
	  Date birthday;
	  String image;
	  String description;
	  String infomation;
	  Set<Album> albums = new HashSet<Album>(0);
	  Set<Song> songs = new HashSet<Song>(0);

	public Singer() {
	}

	public Singer(Date birthday) {
		this.birthday = birthday;
	}

	public Singer(String name, Date birthday, String image, String description, String infomation, Set<Album> albums,
			Set<Song> songs) {
		this.name = name;
		this.birthday = birthday;
		this.image = image;
		this.description = description;
		this.infomation = infomation;
		this.albums = albums;
		this.songs = songs;
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

	@Column(name = "name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "birthday", nullable = false, length = 26)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "image", length = 500)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "infomation", length = 2000)
	public String getInfomation() {
		return this.infomation;
	}

	public void setInfomation(String infomation) {
		this.infomation = infomation;
	}
	@JsonIgnore
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "singer")
	public Set<Album> getAlbums() {
		return this.albums;
	}
	
	public void setAlbums(Set<Album> albums) {
		this.albums = albums;
	}
	@JsonIgnore
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "singer")
	public Set<Song> getSongs() {
		return this.songs;
	}
	
	public void setSongs(Set<Song> songs) {
		this.songs = songs;
	}

}
