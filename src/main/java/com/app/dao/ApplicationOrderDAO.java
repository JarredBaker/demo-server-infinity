package com.app.dao;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.models.DAOApplicationOrder;

@Repository
public interface ApplicationOrderDAO extends CrudRepository<DAOApplicationOrder, Long> {

	@Query(value = "SELECT * FROM application_order", nativeQuery = true)
	Collection<DAOApplicationOrder> get();
}
