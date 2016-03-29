/**
 * PPManticoreSDKTest.m
 *
 * DO NOT EDIT THIS FILE! IT IS AUTOMATICALLY GENERATED AND SHOULD NOT BE CHECKED IN.
 * Generated from: /Users/mmetral/dev/opensource/paypal-manticore/test/js-source/SDKTest.js
 *
 * 
 */
#import "PayPalManticoreImports.h"
#import "PPManticoreEngine.h"
#import "PPManticoreNativeInterface.h"
#import "PPManticoreError.h"

typedef void (^PPManticoreFetchedWrapperBlock)(JSValue*, JSValue*);
PPManticoreFetchedWrapperBlock PPManticoreSDKTest_wrap_fetched_callback(PPManticoreSDKTestFetchedHandler callback) {
    return ^(JSValue *error, JSValue *response) {
        callback([[PPManticoreSDKTest engine] attachNativeObject:error ofType:[PPManticoreError class]], [[PPManticoreSDKTest engine].converter toNativeObject:response]);
    };
}typedef void (^PPManticoreEchoWrapperBlock)(JSValue*, JSValue*);
PPManticoreEchoWrapperBlock PPManticoreSDKTest_wrap_echo_callback(PPManticoreSDKTestEchoHandler callback) {
    return ^(JSValue *error, JSValue *arg) {
        callback([[PPManticoreSDKTest engine] attachNativeObject:error ofType:[PPManticoreError class]], [[PPManticoreSDKTest engine] attachNativeObject:arg ofType:[NSString class]]);
    };
}typedef JSValue* (^PPManticoreEchoReturnWrapperBlock)();
PPManticoreEchoReturnWrapperBlock PPManticoreSDKTest_wrap_echoReturn_callback(PPManticoreSDKTestEchoReturnHandler callback) {
    return ^() {
        NSString* retVal = callback();
        return [[PPManticoreSDKTest engine] resolveJSObject:retVal ofType:[NSString class]];
        
    };
}
@implementation PPManticoreSDKTest


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
  
  return self;
}

- (instancetype _Nullable)initWithStringProperty:(NSString*)stringProperty  {
  if ((self = [super init])) {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine] resolveJSObject:stringProperty ofType:[NSString class]] ?: [NSNull null]
    ];
    self.impl = [[PPManticoreSDKTest engine] createJSObject:@"SDKTest" withArguments:args];
  }
  return self;
}


-(void)echo:(NSString*)arg callback:(PPManticoreSDKTestEchoHandler)callback {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine] resolveJSObject:arg ofType:[NSString class]] ?: [NSNull null],
    PPManticoreSDKTest_wrap_echo_callback(callback)
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"echo" withArguments:args];
}
-(void)echoReturn:(NSString*)arg callback:(PPManticoreSDKTestEchoReturnHandler)callback {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine] resolveJSObject:arg ofType:[NSString class]] ?: [NSNull null],
    PPManticoreSDKTest_wrap_echoReturn_callback(callback)
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"echoReturn" withArguments:args];
}
-(void)echoWithSetTimeout:(NSString*)arg callback:(PPManticoreSDKTestEchoHandler)callback {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine] resolveJSObject:arg ofType:[NSString class]] ?: [NSNull null],
    PPManticoreSDKTest_wrap_echo_callback(callback)
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"echoWithSetTimeout" withArguments:args];
}
-(void)triggerFakeAfterTimeout {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"triggerFakeAfterTimeout" withArguments:args];
}
-(PPManticoreSDKTestDefault*)returnAnObject {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"returnAnObject" withArguments:args];
    return [[PPManticoreSDKTest engine] attachNativeObject:returnValue ofType:[PPManticoreSDKTestDefault class]];
}
-(PPManticoreSDKTestDefault*)returnADerivedObject {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"returnADerivedObject" withArguments:args];
    return [[PPManticoreSDKTest engine] attachNativeObject:returnValue ofType:[PPManticoreSDKTestDefault class]];
}
-(NSArray*)returnBaseAndDerived {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"returnBaseAndDerived" withArguments:args];
    return [[PPManticoreSDKTest engine].converter toNativeArray:returnValue withConverter: ^(JSValue* element) { return [[PPManticoreSDKTest engine] attachNativeObject:element ofType:[PPManticoreSDKTestDefault class]]; }];
}
-(NSArray*)preDecrement:(int)a b:(int)b add:(int)add {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine].converter toJsInt:a] ?: [NSNull null],
    [[PPManticoreSDKTest engine].converter toJsInt:b] ?: [NSNull null],
    [[PPManticoreSDKTest engine].converter toJsInt:add] ?: [NSNull null]
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"preDecrement" withArguments:args];
    return [[PPManticoreSDKTest engine].converter toNativeArray:returnValue withConverter: ^(JSValue* element) { return @([[PPManticoreSDKTest engine].converter toNativeInt:element]); }];
}
-(NSArray*)postDecrement:(int)a b:(int)b add:(int)add {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine].converter toJsInt:a] ?: [NSNull null],
    [[PPManticoreSDKTest engine].converter toJsInt:b] ?: [NSNull null],
    [[PPManticoreSDKTest engine].converter toJsInt:add] ?: [NSNull null]
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"postDecrement" withArguments:args];
    return [[PPManticoreSDKTest engine].converter toNativeArray:returnValue withConverter: ^(JSValue* element) { return @([[PPManticoreSDKTest engine].converter toNativeInt:element]); }];
}
-(NSDictionary*)returnAMixedType {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"returnAMixedType" withArguments:args];
    return [[PPManticoreSDKTest engine].converter toNativeObject:returnValue];
}
-(NSDictionary*)takeAMixedType:(NSDictionary*)stuff {
    NSArray *args = nil;
    args = @[
[[PPManticoreSDKTest engine].converter toJsObject:stuff] ?: [NSNull null]
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"takeAMixedType" withArguments:args];
    return [[PPManticoreSDKTest engine].converter toNativeObject:returnValue];
}
-(void)throwOne {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"throwOne" withArguments:args];
}
-(void)goFetch:(PPManticoreSDKTestFetchedHandler)callback {
    NSArray *args = nil;
    args = @[
PPManticoreSDKTest_wrap_fetched_callback(callback)
    ];
    JSValue *valueToInvokeMethodOn = self.impl;
    [valueToInvokeMethodOn invokeMethod:@"goFetch" withArguments:args];
}

+(PPManticoreSDKTest*)staticMethod {
    NSArray *args = nil;

    JSValue *valueToInvokeMethodOn = [[PPManticoreSDKTest engine] resolveJSClass:@"SDKTest"];
    JSValue *returnValue = [valueToInvokeMethodOn invokeMethod:@"staticMethod" withArguments:args];
    return [[PPManticoreSDKTest engine] attachNativeObject:returnValue ofType:[PPManticoreSDKTest class]];
}



-(int)itsOne {
  return [[PPManticoreSDKTest engine].converter toNativeInt:self.impl[@"itsOne"]];
}

-(void)setItsOne:(int)itsOne {
  self.impl[@"itsOne"] = [[PPManticoreSDKTest engine].converter toJsInt:itsOne];
}

-(int)cantTouchThis {
  return [[PPManticoreSDKTest engine].converter toNativeInt:self.impl[@"cantTouchThis"]];
}



-(NSString*)stringProperty {
  return [[PPManticoreSDKTest engine] attachNativeObject:self.impl[@"stringProperty"] ofType:[NSString class]];
}

-(void)setStringProperty:(NSString*)stringProperty {
  self.impl[@"stringProperty"] = [[PPManticoreSDKTest engine] resolveJSObject:stringProperty ofType:[NSString class]];
}

-(NSString*)accessorString {
  return [[PPManticoreSDKTest engine] attachNativeObject:self.impl[@"accessorString"] ofType:[NSString class]];
}

-(void)setAccessorString:(NSString*)accessorString {
  self.impl[@"accessorString"] = [[PPManticoreSDKTest engine] resolveJSObject:accessorString ofType:[NSString class]];
}

-(PPManticoreSDKTestDefault*)complexType {
  return [[PPManticoreSDKTest engine] attachNativeObject:self.impl[@"complexType"] ofType:[PPManticoreSDKTestDefault class]];
}

-(void)setComplexType:(PPManticoreSDKTestDefault*)complexType {
  self.impl[@"complexType"] = [[PPManticoreSDKTest engine] resolveJSObject:complexType ofType:[PPManticoreSDKTestDefault class]];
}

-(PPManticoreSDKTestStatuses)myStatus {
  return self.impl[@"myStatus"].toInt32;
}

-(void)setMyStatus:(PPManticoreSDKTestStatuses)myStatus {
  self.impl[@"myStatus"] = @(myStatus);
}

-(PPManticoreFakeEventSignal)addFakeEventListener:(PPManticoreFakeEventEvent)listener {

  void (^delegateHandler)(JSValue*) = ^(JSValue *item) {
    listener([[PPManticoreSDKTest engine] attachNativeObject:item ofType:[PPManticoreSDKTestDefault class]]);
  };
  __block PPManticoreEventHolder *eventHolder = [[PPManticoreEventHolder alloc] init];
  eventHolder.block = delegateHandler;

  [self.impl invokeMethod:@"on" withArguments:@[
    @"fakeEvent",
    eventHolder.block
  ]];
  return eventHolder;
}

-(void)removeFakeEventListener:(PPManticoreFakeEventSignal)listenerToken {
  NSAssert([listenerToken isKindOfClass:[PPManticoreEventHolder class]], @"You must pass the object you received from addFakeEventListener in order to remove the listener.");
  if ([listenerToken isKindOfClass:[PPManticoreEventHolder class]]) {
    PPManticoreEventHolder *event = (PPManticoreEventHolder *)listenerToken;
    [self.impl invokeMethod:@"removeListener" withArguments:@[@"fakeEvent",event.block]];
  }
}

@end
