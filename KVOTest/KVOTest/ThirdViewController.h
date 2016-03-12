//
//  ThirdViewController.h
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class SecondViewController;
@interface ThirdViewController : UIViewController{
    
//    ViewController *_vc;
//    
//    SecondViewController *_secondVC;
}

@property (nonatomic ,strong) ViewController *vc;
@property (nonatomic,strong) SecondViewController *secondVC;
@property (nonatomic,strong) UIColor *backGroundColor;
@end
