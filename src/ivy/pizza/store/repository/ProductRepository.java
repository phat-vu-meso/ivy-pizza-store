package ivy.pizza.store.repository;

import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ivy.pizza.store.ProductEntity;

public class ProductRepository {
	public List<ProductEntity> getAllProduct() {
		// https://developer.axonivy.com/doc/8.0/designer-guide/data-modeling/persistence/persistence-api.html#
		List<ProductEntity> productList = Ivy.persistence().get("phat-pizza-store").findAll(ProductEntity.class);
		return productList;
	}

}
