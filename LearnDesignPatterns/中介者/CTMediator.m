//
//  CTMediator.m
//  LearnDesignPatterns
//
//  Created by sunxiaobin on 2019/7/10.
//  Copyright © 2019 sun. All rights reserved.
//

#import "CTMediator.h"
#import <CoreGraphics/CoreGraphics.h>

NSString * const kCTMediatorParamsKeySwiftTargetModuleName = @"kCTMediatorParamsKeySwiftTargetModuleName";

@interface CTMediator ()
// 缓存之前用过的类
@property (nonatomic, strong) NSMutableDictionary * cachedTarget;

@end

@implementation CTMediator

+ (instancetype)shareInstance {
    static CTMediator * mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[self alloc] init];
    });
    return mediator;
}

 /* 远程调用方式
 scheme://[target]/[action]?[params]
 
 url sample:
 aaa://targetA/actionB?id=1234
 */
- (id)performActionWithUrl:(NSURL *)url complete:(void (^)(NSDictionary * _Nullable))complete {
    NSMutableDictionary * params = [NSMutableDictionary new];
    // 把原来拼接的参数, 使用字符串分割, 以key,value的形式存到params中
    NSString * urlString = [url query];
    for (NSString * param in [urlString componentsSeparatedByString:@"&"]) {
        NSArray * elts = [param componentsSeparatedByString:@"="];
        if (elts.count < 2) continue;
        [param setValue:elts[1] forKey:elts[0]];
    }
    
    //
    NSString * actionName = [url.path stringByReplacingOccurrencesOfString:@"/" withString:@""];
    if ([actionName hasPrefix:@"native"]) {
        return @(NO);
    }
    
    
    id result = [self performTarget:url.host action:actionName params:params shouldCacheTarget:NO];
    
    if (complete) {
        if (result) {
            complete(@{@"result":result});
        }
        else {
            complete(nil);
        }
    }
    
    return result;
}

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCachetarget {
    // 没有target 或者 没有action 直接return
    if (!targetName || targetName.length == 0 || !actionName || actionName.length == 0)  return nil;
    
    // 适配swift语言
    NSString * swiftModuleName = params[kCTMediatorParamsKeySwiftTargetModuleName];
    
    NSString * targetClassString = nil;
    if (swiftModuleName.length > 0) {
        targetClassString = [NSString stringWithFormat:@"%@.Target_%@",swiftModuleName,targetName];
    }
    else {
        targetClassString = [NSString stringWithFormat:@"Target_%@",targetName];
    }
    
    NSObject * target = self.cachedTarget[targetClassString];
    if (!target) {
        Class targetClass = NSClassFromString(targetClassString);
        target = [[targetClass alloc] init];
    }
    
    if (target == nil) {
        // MARK: 没有找到类
        return nil;
    }
    
    // 处理actionName->action
    NSString * actionString = [NSString stringWithFormat:@"Action_%@",actionName];
    SEL action = NSSelectorFromString(actionString);
    
    // 先把target缓存起来
    if (shouldCachetarget) {
        self.cachedTarget[targetClassString] = target;
    }
    
    // 是否能响应action
    if ([target respondsToSelector:action]) {
        return [self safePerformAction:action target:target params:params];
    }
    else {
        // MARK: 不能响应方法
        return nil;
    }
    
}

- (void)releaseCachedTargetWithTargetName:(NSString *)targetName {
    NSString * targetClassString = [NSString stringWithFormat:@"Target_%@",targetName];
    [self.cachedTarget removeObjectForKey:targetClassString];
}

#pragma mark - private
- (id)safePerformAction:(SEL)action target:(NSObject *)target params:(NSDictionary *)params {
    NSMethodSignature * methodSig = [target methodSignatureForSelector:action];
    if(methodSig == nil) {
        return nil;
    }
    const char* retType = [methodSig methodReturnType];
    // strcmp 比较两个字符串是否相等  相等返回0
    if (strcmp(retType, @encode(void)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        // index为2  0是id self  1 是SEL _cmd
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        return nil;
    }
    
    if (strcmp(retType, @encode(NSInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        NSInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(BOOL)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        BOOL result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(CGFloat)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        CGFloat result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(NSUInteger)) == 0) {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
        [invocation setArgument:&params atIndex:2];
        [invocation setSelector:action];
        [invocation setTarget:target];
        [invocation invoke];
        NSUInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [target performSelector:action withObject:params];
#pragma clang diagnostic pop
}


#pragma mark - setter getter
- (NSMutableDictionary *)cachedTarget {
    if (!_cachedTarget) {
        _cachedTarget = [NSMutableDictionary new];
    }
    return _cachedTarget;
}

@end
