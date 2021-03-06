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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * Playlist generated by hbm2java
 */
@Entity
@Table(name = "playlist", catalog = "singlepagemusic")
public class Playlist implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	  Integer id;
	  Session session;
	  String name;
	  Date datecreate;
	  Set<Playlistdetail> playlistdetails = new HashSet<Playlistdetail>(0);

	public Playlist() {
	}

	public Playlist(Session session, String name, Date datecreate) {
		this.session = session;
		this.name = name;
		this.datecreate = datecreate;
	}

	public Playlist(Session session, String name, Date datecreate, Set<Playlistdetail> playlistdetails) {
		this.session = session;
		this.name = name;
		this.datecreate = datecreate;
		this.playlistdetails = playlistdetails;
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
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idsession", nullable = false)
	public Session getSession() {
		return this.session;
	}
	
	public void setSession(Session session) {
		this.session = session;
	}

	@Column(name = "name", nullable = false, length = 200)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "datecreate", nullable = false, length = 26)
	public Date getDatecreate() {
		return this.datecreate;
	}

	public void setDatecreate(Date datecreate) {
		this.datecreate = datecreate;
	}
	@JsonIgnore
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "playlist")
	public Set<Playlistdetail> getPlaylistdetails() {
		return this.playlistdetails;
	}
	 
	public void setPlaylistdetails(Set<Playlistdetail> playlistdetails) {
		this.playlistdetails = playlistdetails;
	}

}
