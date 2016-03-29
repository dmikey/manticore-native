package com.paypal.manticore;

/**
 * SDKTestStatuses.java
 *
 * DO NOT EDIT THIS FILE! IT IS AUTOMATICALLY GENERATED AND SHOULD NOT BE CHECKED IN.
 * Generated from: /Users/mmetral/dev/opensource/paypal-manticore/test/js-source/SDKTest.js
 *
 * 
 */
public enum SDKTestStatuses {
    ON_FIRE(0),
    WET(1),
    UNINMAGINABLE(2);


    private final int value;

    private SDKTestStatuses(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static SDKTestStatuses fromInt(int value) {
        switch(value) {
            case 0:
                return ON_FIRE;
            case 1:
                return WET;
            case 2:
                return UNINMAGINABLE;
            
        }
        return null;
    }
}
