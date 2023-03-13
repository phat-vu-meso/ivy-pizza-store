package ivy.pizza.store.repository;

import java.util.List;

import ch.ivyteam.ivy.process.data.persistence.IIvyEntityManager;
import ivy.pizza.store.OrderEntity;
import ivy.pizza.store.enums.OrderStatus;
import ivy.pizza.store.utils.PersistentUtils;

public class OrderRepository {
	private IIvyEntityManager entityManger;
	
	public OrderRepository() {
		this.entityManger = PersistentUtils.getEntityManger();
	}
	
	public void saveOrder(OrderEntity order) {
		// https://developer.axonivy.com/doc/8.0/designer-guide/data-modeling/persistence/persistence-api.html#
		entityManger.persist(order);
	}
	
	@SuppressWarnings("unchecked")
	public List<OrderEntity> getOrders(OrderStatus status) {
		String sql = "SELECT o FROM OrderEntity o WHERE o.orderStatus = :orderStatus";
		List<OrderEntity> data = (List<OrderEntity>) entityManger.createQuery(sql)
											 .setParameter("orderStatus", status)
											 .getResultList();
		return data;
	}
	
	public OrderEntity getOrder(String orderId) {
		OrderEntity data = entityManger.find(OrderEntity.class, orderId);
		return data;
	}
	
	public void updateOrder(OrderEntity orderEntity) {
		entityManger.merge(orderEntity);
	}
}
