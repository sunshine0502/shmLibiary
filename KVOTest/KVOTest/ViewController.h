//
//  ViewController.h
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondViewController;
@class ThirdViewController;
@interface ViewController : UIViewController{
    
//    SecondViewController *_secondVC;
//    
//    ThirdViewController *_thirdVC;
}
@property (nonatomic ,strong) SecondViewController *secondVC;
@property (nonatomic,strong) ThirdViewController *thirdVC;
@property (nonatomic,strong) UIColor *backGroundColor;
@end

