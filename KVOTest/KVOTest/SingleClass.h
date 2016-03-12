//
//  SingleClass.h
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SingleClass : NSObject

+ (ViewController *)creatViewController;
+ (SecondViewController *)creatSecondViewController;
+ (ThirdViewController *)creatThirdViewController;
@end
