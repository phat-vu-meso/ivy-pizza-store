package ivy.pizza.store.beans;

import static ivy.pizza.store.enums.OrderStatus.CANCELED;
import static ivy.pizza.store.enums.OrderStatus.CONFIRMED;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.security.IUser;
import ivy.pizza.store.OrderEntity;
import ivy.pizza.store.enums.OrderStatus;
import ivy.pizza.store.repository.OrderRepository;

@ManagedBean
@ViewScoped
public class OrderBean {
	private final static String ROLE_RECEPTIONIST = "receptionist";
	private final static String ROLE_CHEF = "chef";
	private final static String ROLE_DELIVERY = "delivery";
	
	OrderRepository orderRepository;
	
	public OrderBean() {
		if (this.orderRepository == null) {
			this.orderRepository = new OrderRepository();
		}
	}
	
	private String getRoleName(IUser user) {
		// TODO get role more proper, e.g exception
		String roleName = user.getRoles().get(1).getName();
		return roleName;
	}
	
	public List<OrderEntity> getOrders(IUser user) {
		String roleName = getRoleName(user);
		return orderRepository.getOrders(getOrderStatusViaRole(roleName));
	}
	
	public String getTotalOrderPrice(OrderEntity order) {
		Double value = order.getOrderDetails().stream().reduce(0D, (total, item) -> total + item.getTotalPrice(), Double::sum);
		return String.format("%.2f", value);
	}
	
	public void confirmOrder(String orderId, String statusType) {
		OrderEntity order = orderRepository.getOrder(orderId);
		order.setOrderStatus(OrderStatus.valueOf(statusType.toUpperCase()));
		orderRepository.updateOrder(order);
	}
	
	public void cancelOrder(String orderId) {
		OrderEntity order = orderRepository.getOrder(orderId);
		order.setOrderStatus(CANCELED);
		orderRepository.updateOrder(order);
	}
	
	private OrderStatus getOrderStatusViaRole(String roleName) {
		switch (roleName.toLowerCase()) {
			case ROLE_RECEPTIONIST:
				return OrderStatus.PENDING;
			case ROLE_CHEF:
				return OrderStatus.CONFIRMED;
			case ROLE_DELIVERY:
				return OrderStatus.DELIVERING;
			default:
				return OrderStatus.CANCELED;
		}
	}
	
	public String getOrderType(IUser user) {
		String roleName = getRoleName(user);
		switch (roleName.toLowerCase()) {
			case ROLE_RECEPTIONIST:
				return OrderStatus.PENDING.toString().toLowerCase();
			case ROLE_CHEF:
				return OrderStatus.CONFIRMED.toString().toLowerCase();
			case ROLE_DELIVERY:
				return OrderStatus.DELIVERING.toString().toLowerCase();
			default:
				return "UNKNOWN";
		}
	}
}
