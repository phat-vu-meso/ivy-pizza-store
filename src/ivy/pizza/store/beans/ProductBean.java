package ivy.pizza.store.beans;

import java.util.List;
import java.util.stream.Collectors;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ivy.pizza.store.ProductEntity;
import ivy.pizza.store.repository.ProductRepository;

@ManagedBean
@ViewScoped
public class ProductBean {
	ProductRepository productRepository;
	List<ProductEntity> productList;
	
	private static final int PIZZA_CATEGORY = 1000;
	private static final int DRINK_CATEGORY = 2000;
	
	
	public ProductBean() {
		if (this.productRepository == null) {
			this.productRepository = new ProductRepository();
		}
	}
	
	public List<ProductEntity> getPizzaList() {
		initProductData();
		return productList.stream()
				.filter(p -> p.getCategory().getId() == PIZZA_CATEGORY)
				.collect(Collectors.toList());
	}
	
	public List<ProductEntity> getDrinkList() {
		initProductData(); 
		initProductData();
		return productList.stream()
				.filter(p -> p.getCategory().getId() == DRINK_CATEGORY)
				.collect(Collectors.toList());
	}

	private void initProductData() {
		if (productList == null) {
			productList = productRepository.getAllProduct();
		}
	}
}
