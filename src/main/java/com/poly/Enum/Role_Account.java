package com.poly.Enum;

public enum Role_Account {
	    ADMIN(0),
	    USER(1);

	    private final int value;

	    Role_Account(int value) {
	      this.value = value;
	    }

	    public int getValue() {
	      return this.value;
	    }


}
