package com.app.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.app.config.JwtTokenUtil;
import com.app.models.DAOApplicationOrder;
import com.app.models.DAOApplicationUser;
import com.app.service.ApplicationUserService;
import com.app.service.UserService;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:3000")
public class ApplicationController {

	@Autowired
	private ApplicationUserService appUserService;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private UserService userService;

	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value = "/get_child_node_users", method = RequestMethod.GET)
	public ResponseEntity<?> getApplicationUsersFromParentNode(HttpServletRequest request) {

		final String requestTokenHeader = request.getHeader("Authorization");
		String jwtToken = requestTokenHeader.substring(7);
		String username = jwtTokenUtil.getUsernameFromToken(jwtToken);

		Long id = userService.getUserByUsername(username).getId();

		Collection<DAOApplicationUser> directDecendents = appUserService.getChildNodeFromParent();

		return ResponseEntity.ok(directDecendents);
	}

	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value = "/commission_by_id", method = RequestMethod.GET)
	public ResponseEntity<?> getApplicationOrders(HttpServletRequest request) {

		final String requestTokenHeader = request.getHeader("Authorization");
		String jwtToken = requestTokenHeader.substring(7);
		String username = jwtTokenUtil.getUsernameFromToken(jwtToken);

		Long id = userService.getUserByUsername(username).getId();

		Collection<DAOApplicationOrder> directDecendents = appUserService.getApplicationOrders();

		return ResponseEntity.ok(directDecendents);
	}
}
