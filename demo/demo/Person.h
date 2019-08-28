//
//  Person.h
//  demo
//
//  Created by FelixPlus on 2019/8/28.
//  Copyright © 2019 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic ,copy) NSString *name;

@property (nonatomic ,assign) NSUInteger age;

@property (nonatomic ,copy) NSArray<Person *> *friends;

@end

NS_ASSUME_NONNULL_END
