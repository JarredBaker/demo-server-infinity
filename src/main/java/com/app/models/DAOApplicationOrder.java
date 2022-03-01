package com.app.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity()
@Table(name = "application_order")
public class DAOApplicationOrder {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column
	private long user_id;

	@Column
	private long volume;
	
	@Column
    private java.sql.Timestamp date_of_submission;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getVolume() {
		return volume;
	}

	public void setVolume(long volume) {
		this.volume = volume;
	}

	public java.sql.Timestamp getDate_of_submission() {
		return date_of_submission;
	}

	public void setDate_of_submission(java.sql.Timestamp date_of_submission) {
		this.date_of_submission = date_of_submission;
	}

}
