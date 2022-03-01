package com.app.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.ApplicationOrderDAO;
import com.app.dao.ApplicationUserDAO;
import com.app.models.DAOApplicationOrder;
import com.app.models.DAOApplicationUser;

@Service
public class ApplicationUserService {

	@Autowired
	private ApplicationOrderDAO applicationDAO;

	@Autowired
	private ApplicationUserDAO applicationUserDAO;

	public Collection<DAOApplicationOrder> getApplicationOrders() {
		return applicationDAO.get();
	}

	public Collection<DAOApplicationUser> getChildNodeFromParent() {
		return applicationUserDAO.getAllNodes();
	}
}
