package com.logo.eshow.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.orm.jpa.JpaSystemException;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.logo.eshow.bean.query.UserQueryBean;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.dao.UserDao;
import com.logo.eshow.model.User;
import com.logo.eshow.service.UserExistsException;
import com.logo.eshow.service.UserManager;
import com.logo.eshow.service.UserService;

import javax.jws.WebService;
import javax.persistence.EntityExistsException;

import java.io.Serializable;
import java.util.List;


/**
 * Implementation of UserManager interface.
 *
 * @author <a href="mailto:matt@raibledesigns.com">Matt Raible</a>
 */
@Service("userManager")
@WebService(serviceName = "UserService", endpointInterface = "com.logo.eshow.service.UserService")
public class UserManagerImpl extends GenericManagerImpl<User, Integer> implements UserManager, UserService {
	private PasswordEncoder passwordEncoder;
    private UserDao userDao;

    @Autowired
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.dao = userDao;
        this.userDao = userDao;
    }

    /**
     * {@inheritDoc}
     */
    public User getUser(Integer userId) {
        return userDao.get(userId);
    }

    /**
     * {@inheritDoc}
     */
    public List<User> getUsers() {
        return userDao.getUsers();
    }
    
    
    public Page<User> search(UserQueryBean queryBean,int offset, int pagesize) {
		return userDao.search(queryBean, offset, pagesize);
	}
    /**
     * {@inheritDoc}
     */
    public User saveUser(User user) throws UserExistsException {

        if (user.getVersion() == null) {
            // if new user, lowercase userId
            user.setUsername(user.getUsername().toLowerCase());
        }
        
        // Get and prepare password management-related artifacts
        boolean passwordChanged = false;
        if (passwordEncoder != null) {
            // Check whether we have to encrypt (or re-encrypt) the password
            if (user.getVersion() == null) {
                // New user, always encrypt
                passwordChanged = true;
            } else {
                // Existing user, check password in DB
                String currentPassword = userDao.getUserPassword(user.getUsername());
                if (currentPassword == null) {
                    passwordChanged = true;
                } else {
                    if (!currentPassword.equals(user.getPassword())) {
                        passwordChanged = true;
                    }
                }
            }

            // If password was changed (or new user), encrypt it
            if (passwordChanged) {
                user.setPassword(passwordEncoder.encodePassword(user.getPassword(), null));
            }
        } else {
            log.warn("PasswordEncoder not set, skipping password encryption...");
        }

        try {
            return userDao.saveUser(user);
        } catch (DataIntegrityViolationException e) {
            //e.printStackTrace();
            log.warn(e.getMessage());
            throw new UserExistsException("User '" + user.getUsername() + "' already exists!");
        } catch (JpaSystemException e) { // needed for JPA
            //e.printStackTrace();
            log.warn(e.getMessage());
            throw new UserExistsException("User '" + user.getUsername() + "' already exists!");
        }
    }

    /**
     * {@inheritDoc}
     */
    public void removeUser(Integer userId) {
        log.debug("removing user: " + userId);
        userDao.remove(userId);
    }

    /**
     * {@inheritDoc}
     * @param username the login name of the human
     * @return User the populated user object
     * @throws UsernameNotFoundException thrown when username not found
     */
    public User getUserByUsername(String username) throws UsernameNotFoundException {
        return (User) userDao.loadUserByUsername(username);
    }
    
    /**
	 * {@inheritDoc}
	 */
	public boolean password(String oldPasswd, String password, User user)
			throws UserExistsException {
		// 加密传来的旧密码和数据库中的密码对比
	
		if (passwordEncoder != null) {
			oldPasswd = passwordEncoder.encodePassword(oldPasswd, null);
			if (user.getPassword().equals(oldPasswd)) {
				user.setPassword(passwordEncoder.encodePassword(password,
						null));
				userDao.saveUser(user);
				return true;
			} 
		}
		return false;
	}

}
