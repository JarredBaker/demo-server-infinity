package com.app.dao;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.models.DAOApplicationUser;

@Repository
public interface ApplicationUserDAO extends CrudRepository<DAOApplicationUser, Long> {

	@Query(value = "SELECT * FROM application_user", nativeQuery = true)
	Collection<DAOApplicationUser> getAllNodes();
}