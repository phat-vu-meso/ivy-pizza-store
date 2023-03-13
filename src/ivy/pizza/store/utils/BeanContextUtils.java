package ivy.pizza.store.utils;

import javax.faces.context.FacesContext;

public class BeanContextUtils {
	// https://stackoverflow.com/questions/2633112/get-jsf-managed-bean-by-name-in-any-servlet-related-class
	public static <T> T findBean(String beanName, Class<T> clazz) {
		FacesContext context = FacesContext.getCurrentInstance();
		try {
			if (context != null) {
				T result = (T) context.getApplication().evaluateExpressionGet(context, "#{" + beanName + "}", clazz);
				return result;
			} else {
				return null;
			}
		} catch (Exception e) {
			return null;
		}
	}
}
