package ivy.pizza.store.enums;

public enum OrderStatus {
	REJECTED(0),
	PENDING(1),
	CONFIRMED(2),
	DELIVERING(3),
	DELIVERED(4),
	DONE(5);

    private final int value;

    OrderStatus(final int newValue) {
        value = newValue;
    }

    public int getValue() { return value; }
}
