//
//  Person.m
//  demo
//
//  Created by FelixPlus on 2019/8/28.
//  Copyright © 2019 Felix. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        _name = @"";
        _age = 0;
        _friends = @[];
    }
    
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    // 当收到通知的时候打印观察的对象，旧值和新值
    NSLog(@"\nReceving ObserveValueChanged \nObject: %@ OldValue: %@, NewValue: %@",object, change[NSKeyValueChangeOldKey], change[NSKeyValueChangeNewKey]);
}

// 重写以便打印对象的属性
- (NSString *)description {
    
    return [NSString stringWithFormat:@"- name: %@, age: %ld, friends: %@",self.name, self.age, self.friends];
}

@end
