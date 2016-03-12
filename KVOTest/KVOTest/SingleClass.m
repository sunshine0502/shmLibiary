//
//  SingleClass.m
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import "SingleClass.h"

static ViewController *vc = nil;

static SecondViewController *secondVC = nil;

static ThirdViewController *thirdVC = nil;

@implementation SingleClass

+ (ViewController *)creatViewController {
    
    if (!vc) {
        
//        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        
//        vc = [storyBoard instantiateInitialViewController];
        
        vc = [[ViewController alloc]init];
        
    }
    
    return vc;
    
}

+ (SecondViewController *)creatSecondViewController {
    
    if (!secondVC) {
        
        secondVC = [[SecondViewController alloc]init];
    }
    
    return secondVC;
    
}


+ (ThirdViewController *)creatThirdViewController {
    
    if (!thirdVC) {
        
        thirdVC = [[ThirdViewController alloc]init];
    }
    
    return thirdVC;
    
}

@end
