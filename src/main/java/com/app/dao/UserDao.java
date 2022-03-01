package com.app.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.models.DAOGeneralUser;

@Repository
public interface UserDao extends CrudRepository<DAOGeneralUser, Long> {

	@Query(value = "SELECT * FROM Users where username = :username", nativeQuery = true)
	DAOGeneralUser findUserByUsername(String username);

	@Query(value = "SELECT * FROM application_user where father = :id", nativeQuery = true)
	DAOGeneralUser findSubUsersFromFater(Long id);
}