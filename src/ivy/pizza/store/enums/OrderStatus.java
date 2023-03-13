package ivy.pizza.store.enums;

public enum OrderStatus {
	CANCELED(0),
	PENDING(1),
	CONFIRMED(2),
	DELIVERING(3),
	DONE(4);
	// PENDING -> CONFIRMED -> DELIVERING ->  DONE
	// or, CANCELED
	
	
    private final int value;

    OrderStatus(final int newValue) {
        value = newValue;
    }

    public int getValue() { return value; }
}
