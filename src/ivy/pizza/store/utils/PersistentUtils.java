package ivy.pizza.store.utils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;

public class PersistentUtils {
	private static IIvyEntityManager entityManger;
	
	public static IIvyEntityManager getEntityManger() {
		if (entityManger == null) {
			entityManger = Ivy.persistence().get("phat-pizza-store");
		}
		return entityManger;
	}
}
