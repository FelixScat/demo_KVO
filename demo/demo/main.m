//
//  main.m
//  demo
//
//  Created by FelixPlus on 2019/8/28.
//  Copyright © 2019 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"

static void *PersonChangeContext = &PersonChangeContext;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *Alice = Person.new;
        Alice.name = @"Alice";
        Alice.age = 18;
        
        Person *Bob = Person.new;
        Bob.name = @"Bob";
        Bob.age = 28;
        
        
        Class cls0 = object_getClass(Alice);
        
        [Alice addObserver:Bob forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:PersonChangeContext];
        
        Alice.age = 100;
        
        Class cls1 = object_getClass(Alice);
        
        NSLog(@"%@ %@",cls0,cls1);
        
    }
    return 0;
}
