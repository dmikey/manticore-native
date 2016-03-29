package com.paypal.manticore;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.concurrent.Callable;

import com.eclipsesource.v8.V8Value;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Object;
import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.paypal.manticore.IManticoreTypeConverter;

/**
 * 
 *
 * DO NOT EDIT THIS FILE! IT IS AUTOMATICALLY GENERATED AND SHOULD NOT BE CHECKED IN.
 * Generated from: /Users/mmetral/dev/opensource/paypal-manticore/test/js-source/SDKTestDefault.js
 *  
 */
public class SDKTestDefault extends JsBackedObject {
  //<editor-fold description="Constructors">
  /**
   * Internal constructor from a V8 value. Make sure you copy it if it will be released automatically (i.e. if you didn't make it)
   */
  SDKTestDefault(V8Object jsValue) {
    super(jsValue);
  }

  /**
   * Internal static that allows more specific types to be created by analyzing JS property
   */
  static SDKTestDefault nativeInstanceForObject(V8Object jsValue) {
    if (jsValue == null || jsValue.isUndefined()) {
      return null;
    }
    Object nativeClass = jsValue.get("_native");
    if (nativeClass == null || !(nativeClass instanceof String))
    {
      return new SDKTestDefault(jsValue);
    }
    if ("SDKTestDefaultSubclass".equals(nativeClass))
    {
      return new SDKTestDefaultSubclass(jsValue);
    }

    return new SDKTestDefault(jsValue);
  }

  public SDKTestDefault() {
    super();
    getEngine().getExecutor().run(new Runnable() {
        @Override public void run() {
            SDKTestDefault.this.impl = getEngine().createJsObject("SDKTestDefault", null);
        }
    });
  }
  //</editor-fold>

  //<editor-fold description="Property getters and setters">
  /**
   * It's 1
   */
  public Integer getTest() {
    return getEngine().getExecutor().run(new Callable<Integer>() {
      @Override public Integer call() {
        int _jsType = SDKTestDefault.this.impl.getType("test");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return 0;
        }
        Integer _test = SDKTestDefault.this.impl.getInteger("test");
        return _test;
      }
    });
  }

  /**
   * It's 1
   */
  public void setTest(final Integer value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("test", value);
      }
    });
  }

  /**
   * It's true
   */
  public Boolean getItsTrue() {
    return getEngine().getExecutor().run(new Callable<Boolean>() {
      @Override public Boolean call() {
        int _jsType = SDKTestDefault.this.impl.getType("itsTrue");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        Boolean _itsTrue = SDKTestDefault.this.impl.getBoolean("itsTrue");
        return _itsTrue;
      }
    });
  }

  /**
   * It's true
   */
  public void setItsTrue(final Boolean value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("itsTrue", value);
      }
    });
  }

  /**
   * It's false
   */
  public Boolean getItsFalse() {
    return getEngine().getExecutor().run(new Callable<Boolean>() {
      @Override public Boolean call() {
        int _jsType = SDKTestDefault.this.impl.getType("itsFalse");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        Boolean _itsFalse = SDKTestDefault.this.impl.getBoolean("itsFalse");
        return _itsFalse;
      }
    });
  }

  /**
   * It's false
   */
  public void setItsFalse(final Boolean value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("itsFalse", value);
      }
    });
  }

  /**
   * Starts blank
   */
  public Integer getBlankInt() {
    return getEngine().getExecutor().run(new Callable<Integer>() {
      @Override public Integer call() {
        int _jsType = SDKTestDefault.this.impl.getType("blankInt");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return 0;
        }
        Integer _blankInt = SDKTestDefault.this.impl.getInteger("blankInt");
        return _blankInt;
      }
    });
  }

  /**
   * Starts blank
   */
  public void setBlankInt(final Integer value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("blankInt", value);
      }
    });
  }

  /**
   * Starts 1
   */
  public Integer getIntOne() {
    return getEngine().getExecutor().run(new Callable<Integer>() {
      @Override public Integer call() {
        int _jsType = SDKTestDefault.this.impl.getType("intOne");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return 0;
        }
        Integer _intOne = SDKTestDefault.this.impl.getInteger("intOne");
        return _intOne;
      }
    });
  }

  /**
   * Starts 1
   */
  public void setIntOne(final Integer value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("intOne", value);
      }
    });
  }

  /**
   * Starts blank
   */
  public BigDecimal getBlankDecimal() {
    return getEngine().getExecutor().run(new Callable<BigDecimal>() {
      @Override public BigDecimal call() {
        int _jsType = SDKTestDefault.this.impl.getType("blankDecimal");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        V8Object _blankDecimal = SDKTestDefault.this.impl.getObject("blankDecimal");
        return getEngine().getConverter().asNativeDecimal(_blankDecimal);
      }
    });
  }

  /**
   * Starts blank
   */
  public void setBlankDecimal(final BigDecimal value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("blankDecimal", getEngine().getConverter().asJsDecimal(value));
      }
    });
  }

  /**
   * Starts 100.01
   */
  public BigDecimal getDecimalHundredOhOne() {
    return getEngine().getExecutor().run(new Callable<BigDecimal>() {
      @Override public BigDecimal call() {
        int _jsType = SDKTestDefault.this.impl.getType("decimalHundredOhOne");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        V8Object _decimalHundredOhOne = SDKTestDefault.this.impl.getObject("decimalHundredOhOne");
        return getEngine().getConverter().asNativeDecimal(_decimalHundredOhOne);
      }
    });
  }

  /**
   * Starts 100.01
   */
  public void setDecimalHundredOhOne(final BigDecimal value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("decimalHundredOhOne", getEngine().getConverter().asJsDecimal(value));
      }
    });
  }

  /**
   * It's a null string.
   */
  public String getNullString() {
    return getEngine().getExecutor().run(new Callable<String>() {
      @Override public String call() {
        int _jsType = SDKTestDefault.this.impl.getType("nullString");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        String _nullString = SDKTestDefault.this.impl.getString("nullString");
        return _nullString;
      }
    });
  }

  /**
   * It's a null string.
   */
  public void setNullString(final String value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("nullString", value);
      }
    });
  }

  /**
   * It's now
   */
  public Date getNow() {
    return getEngine().getExecutor().run(new Callable<Date>() {
      @Override public Date call() {
        int _jsType = SDKTestDefault.this.impl.getType("now");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        V8Object _now = SDKTestDefault.this.impl.getObject("now");
        return getEngine().getConverter().asNativeDate(_now);
      }
    });
  }

  /**
   * It's now
   */
  public void setNow(final Date value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("now", getEngine().getConverter().asJsDate(value));
      }
    });
  }

  /**
   * An array of a, b, c
   */
  public List<String> getStringArray() {
    return getEngine().getExecutor().run(new Callable<List<String>>() {
      @Override public List<String> call() {
        int _jsType = SDKTestDefault.this.impl.getType("stringArray");
        if (_jsType == V8Value.UNDEFINED || _jsType == V8Value.NULL) {
          return null;
        }
        V8Array _stringArray = SDKTestDefault.this.impl.getArray("stringArray");
        return getEngine().getConverter().toNativeArray(_stringArray, new IManticoreTypeConverter.NativeElementConverter<String>() {
        @Override
        public String convert(Object jsValue) {
            return (String) jsValue;
        }
    });
      }
    });
  }

  /**
   * An array of a, b, c
   */
  public void setStringArray(final List<String> value) {
    getEngine().getExecutor().run(new Runnable()
    {
      @Override public void run() {
        SDKTestDefault.this.impl.add("stringArray", getEngine().getConverter().toJsArray(value, new IManticoreTypeConverter.JsElementConverter<String>() {
        @Override
        public void push(V8Array dest, String nativeValue) {
            dest.push(nativeValue);
        }
    }));
      }
    });
  }


  //</editor-fold>





  //<editor-fold description="Methods">

  /**
   * Test closure
   */
  public Boolean isItTrue() {
    return getEngine().getExecutor().run(new Callable<Boolean>() {
      @Override public Boolean call() {
        V8Array args = getEngine().getEmptyArray();
        V8Object objectToExecuteOn = SDKTestDefault.this.impl;
        Boolean retVal = objectToExecuteOn.executeBooleanFunction("isItTrue", args);
        return retVal;
      }
    });
  }

  /**
   * Returns a string representing the serialized state of the SDKTestDefault object
   */
  public String toString() {
    return getEngine().getExecutor().run(new Callable<String>() {
      @Override public String call() {
        V8Object objectToExecuteOn = getEngine().getJsObject("JSON");
        V8Object objectStringify = SDKTestDefault.this.impl;
        V8Array args = getEngine().createJsArray().push(objectStringify);
        String retVal = objectToExecuteOn.executeStringFunction("stringify", args);
        return retVal;
      }
    });
  }

  //</editor-fold>





}
