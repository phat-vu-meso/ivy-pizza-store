package ivy.pizza.store.repository;

import java.util.List;

import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;
import ivy.pizza.store.ProductEntity;
import ivy.pizza.store.utils.PersistentUtils;

public class ProductRepository {
	private IIvyEntityManager entityManger;
	
	public ProductRepository() {
		this.entityManger = PersistentUtils.getEntityManger();
	}
	
	public List<ProductEntity> getAllProduct() {
		// https://developer.axonivy.com/doc/8.0/designer-guide/data-modeling/persistence/persistence-api.html#
		List<ProductEntity> productList = entityManger.findAll(ProductEntity.class);
		return productList;
	}

}
