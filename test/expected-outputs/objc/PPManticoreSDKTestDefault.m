/**
 * PPManticoreSDKTestDefault.m
 *
 * DO NOT EDIT THIS FILE! IT IS AUTOMATICALLY GENERATED AND SHOULD NOT BE CHECKED IN.
 * Generated from: /Users/mmetral/dev/opensource/paypal-manticore/test/js-source/SDKTestDefault.js
 *
 * 
 */
#import "PayPalManticoreImports.h"
#import "PPManticoreEngine.h"
#import "PPManticoreNativeInterface.h"
#import "PPManticoreError.h"


@implementation PPManticoreSDKTestDefault


- (instancetype _Nullable)initFromJavascript:(JSValue*)value {
  if ((self = [super init])) {
    self.impl = value;
  }
  return self;
}


+ (Class)nativeClassForObject:(JSValue*)value {
  if (value.isNull || value.isUndefined) {
    return self;
  }
  JSValue *nativeClass = value[@"_native"];
  if (nativeClass.isNull || nativeClass.isUndefined) {
    return self;
  }
  NSString *nativeStr = [nativeClass toString];

  if ([@"SDKTestDefaultSubclass" isEqualToString:nativeStr]) {
    return [PPManticoreSDKTestDefaultSubclass class];
  }

  return self;
}

- (instancetype _Nullable)init {
  if ((self = [super init])) {
    self.impl = [[PPManticoreSDKTestDefault engine] createJSObject:@"SDKTestDefault" withArguments:nil];
  }
  return self;
}

-(BOOL)isItTrue {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"isItTrue" withArguments:args];
    return [[PPManticoreSDKTestDefault engine].converter toNativeBool:returnValue];
}




-(int)test {
  return [[PPManticoreSDKTestDefault engine].converter toNativeInt:self.impl[@"test"]];
}

-(void)setTest:(int)test {
  self.impl[@"test"] = [[PPManticoreSDKTestDefault engine].converter toJsInt:test];
}

-(BOOL)itsTrue {
  return [[PPManticoreSDKTestDefault engine].converter toNativeBool:self.impl[@"itsTrue"]];
}

-(void)setItsTrue:(BOOL)itsTrue {
  self.impl[@"itsTrue"] = [[PPManticoreSDKTestDefault engine].converter toJsBool:itsTrue];
}

-(BOOL)itsFalse {
  return [[PPManticoreSDKTestDefault engine].converter toNativeBool:self.impl[@"itsFalse"]];
}

-(void)setItsFalse:(BOOL)itsFalse {
  self.impl[@"itsFalse"] = [[PPManticoreSDKTestDefault engine].converter toJsBool:itsFalse];
}

-(int)blankInt {
  return [[PPManticoreSDKTestDefault engine].converter toNativeInt:self.impl[@"blankInt"]];
}

-(void)setBlankInt:(int)blankInt {
  self.impl[@"blankInt"] = [[PPManticoreSDKTestDefault engine].converter toJsInt:blankInt];
}

-(int)intOne {
  return [[PPManticoreSDKTestDefault engine].converter toNativeInt:self.impl[@"intOne"]];
}

-(void)setIntOne:(int)intOne {
  self.impl[@"intOne"] = [[PPManticoreSDKTestDefault engine].converter toJsInt:intOne];
}

-(NSDecimalNumber*)blankDecimal {
  return [[PPManticoreSDKTestDefault engine].converter toNativeDecimal:self.impl[@"blankDecimal"]];
}

-(void)setBlankDecimal:(NSDecimalNumber*)blankDecimal {
  self.impl[@"blankDecimal"] = [[PPManticoreSDKTestDefault engine].converter toJsDecimal:blankDecimal];
}

-(NSDecimalNumber*)decimalHundredOhOne {
  return [[PPManticoreSDKTestDefault engine].converter toNativeDecimal:self.impl[@"decimalHundredOhOne"]];
}

-(void)setDecimalHundredOhOne:(NSDecimalNumber*)decimalHundredOhOne {
  self.impl[@"decimalHundredOhOne"] = [[PPManticoreSDKTestDefault engine].converter toJsDecimal:decimalHundredOhOne];
}

-(NSString*)nullString {
  return [[PPManticoreSDKTestDefault engine] attachNativeObject:self.impl[@"nullString"] ofType:[NSString class]];
}

-(void)setNullString:(NSString*)nullString {
  self.impl[@"nullString"] = [[PPManticoreSDKTestDefault engine] resolveJSObject:nullString ofType:[NSString class]];
}

-(NSDate*)now {
  return [[PPManticoreSDKTestDefault engine] attachNativeObject:self.impl[@"now"] ofType:[NSDate class]];
}

-(void)setNow:(NSDate*)now {
  self.impl[@"now"] = [[PPManticoreSDKTestDefault engine] resolveJSObject:now ofType:[NSDate class]];
}

-(NSArray*)stringArray {
  return [[PPManticoreSDKTestDefault engine].converter toNativeArray:self.impl[@"stringArray"] withConverter: ^(JSValue* element) { return [[PPManticoreSDKTestDefault engine] attachNativeObject:element ofType:[NSString class]]; }];
}

-(void)setStringArray:(NSArray*)stringArray {
  self.impl[@"stringArray"] = [[PPManticoreSDKTestDefault engine].converter toJsArray:stringArray withConverter: ^(id element) { return [[PPManticoreSDKTestDefault engine] resolveJSObject:element ofType:[NSString class]]; }];
}

@end
