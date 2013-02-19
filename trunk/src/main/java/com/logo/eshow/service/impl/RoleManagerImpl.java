package com.logo.eshow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logo.eshow.dao.RoleDao;
import com.logo.eshow.model.Role;
import com.logo.eshow.service.RoleManager;

/**
 * Implementation of RoleManager interface.
 * 
 * @author <a href="mailto:dan@getrolling.com">Dan Kibler</a>
 */
@Service("roleManager")
public class RoleManagerImpl extends GenericManagerImpl<Role, Integer> implements RoleManager {

	RoleDao roleDao;

	@Autowired
	public RoleManagerImpl(RoleDao roleDao) {
		super(roleDao);
		this.roleDao = roleDao;
	}

	/**
	 * {@inheritDoc}
	 */
	public List<Role> getRoles() {
		return dao.getAll();
	}

	/**
	 * {@inheritDoc}
	 */
	public Role getRole(String rolename) {
		return roleDao.getRoleByName(rolename);
	}

	/**
	 * {@inheritDoc}
	 */
	public Role saveRole(Role role) {
		return dao.save(role);
	}

	/**
	 * {@inheritDoc}
	 */
	public void removeRole(String rolename) {
		roleDao.removeRole(rolename);
	}

}