package ivy.pizza.store.beans;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ivy.pizza.store.ProductEntity;
import ivy.pizza.store.repository.ProductRepository;

@ManagedBean
@ViewScoped
public class ProductBean {
	ProductRepository productRepository;
	
	public ProductBean() {
		if (this.productRepository == null) {
			this.productRepository = new ProductRepository();
		}
	}
	
	public List<ProductEntity> getProducts() {
		return productRepository.getAllProduct();
	}

}
