package ivy.pizza.store.beans;

import static ivy.pizza.store.enums.OrderStatus.PENDING;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.transaction.Transactional;

import org.apache.commons.lang.StringUtils;

import ivy.pizza.store.OrderDetailEntity;
import ivy.pizza.store.OrderEntity;
import ivy.pizza.store.ProductEntity;
import ivy.pizza.store.repository.OrderRepository;

@ManagedBean(name = "shoppingCartBean")
@SessionScoped
public class ShoppingCartBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private OrderRepository orderRepository;
	
	private List<OrderDetailEntity> carts;
	private OrderEntity order;
	
	public ShoppingCartBean() {
		if (this.carts == null) {
			this.carts = new ArrayList<>();
		}
		if (this.order == null) {
			this.order = new OrderEntity();
			this.order.setId(UUID.randomUUID().toString());
		}
	}
	
	@Transactional
	public String saveOrder() {
		String orderId = order.getId();
		if (orderRepository == null) {
			orderRepository = new OrderRepository();
		}
		order.setOrderDate(System.currentTimeMillis() / 1000L);
		order.setOrderStatus(PENDING);
		order.setOrderDetails(carts);
		orderRepository.saveOrder(order);
		resetOrder();
		return orderId;
	}
	
	private void resetOrder() {
		this.carts = new ArrayList<>();
		this.order = new OrderEntity();
		this.order.setId(UUID.randomUUID().toString());
	}
	
	public void addProductToCart(String pId, String pName, String pPrice) {
		int productId = Integer.valueOf(pId);
		carts.stream()
        .filter(p -> p.getProduct().getId() == productId)
        .findFirst()
        .ifPresentOrElse(
            p -> {
            	p.setQuantity(p.getQuantity() + 1);
            	p.setTotalPrice(p.getQuantity() * p.getProduct().getBasePrice());
            },
            () -> carts.add(prepareNewCartItem(productId, pName, pPrice))
        );
	}
	
	public boolean validateOrderInput() {
		boolean result = StringUtils.isNotBlank(order.getCustomerName()) 
						&& StringUtils.isNotBlank(order.getCustomerPhone())
						&& StringUtils.isNotBlank(order.getDeliveryAddress())
						&& carts.size() > 0;
						
		return result;
	}
	
	private OrderDetailEntity prepareNewCartItem(int productId, String productName, String productPrice) {
		OrderDetailEntity orderItem = new OrderDetailEntity();
		orderItem.setQuantity(1);
		ProductEntity product = new ProductEntity();
		product.setId(productId);
		product.setName(productName);
		product.setBasePrice(Double.valueOf(productPrice));
		orderItem.setTotalPrice(product.getBasePrice());
		orderItem.setProduct(product);
		orderItem.setOrder(this.order);
		return orderItem;
	}
	
	public String getTotalOrderPrice() {
		Double total = this.carts.stream().reduce(0D, (subtotal, item) -> subtotal + item.getTotalPrice(), Double::sum);
		return String.format("%.2f", total);
	}

	public List<OrderDetailEntity> getCarts() {
		return carts;
	}

	public void setCarts(List<OrderDetailEntity> carts) {
		this.carts = carts;
	}

	public OrderEntity getOrder() {
		return order;
	}

	public void setOrder(OrderEntity order) {
		this.order = order;
	}
}
