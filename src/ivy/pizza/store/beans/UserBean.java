package ivy.pizza.store.beans;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.ISession;

@ManagedBean
@ViewScoped
public class UserBean {
	public boolean validateUser(String userName, String userPassword) {
		return false;
	}

}
