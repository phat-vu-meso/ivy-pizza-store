package ivy.pizza.store.enums;

public enum ProductType {
	PIZZA(0),
    DRINK(1);

    private final int value;

    ProductType(final int newValue) {
        value = newValue;
    }

    public int getValue() { return value; }
}
