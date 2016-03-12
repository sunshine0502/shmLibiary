//
//  SecondViewController.h
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class ThirdViewController;
@interface SecondViewController : UIViewController{
    
//    ViewController *_vc;
//    
//    ThirdViewController *_thirdVC;
}

@property (nonatomic ,strong) ViewController *vc;
@property (nonatomic,strong) ThirdViewController *thirdVC;
@property (nonatomic,strong) UIColor *backGroundColor;
@end
