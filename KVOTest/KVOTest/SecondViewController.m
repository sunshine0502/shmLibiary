//
//  SecondViewController.m
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "ThirdViewController.h"
#import "SingleClass.h"
@interface SecondViewController (){
    
    SecondViewController *_secondVC;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if (!_vc) {
        
        _vc = [SingleClass creatViewController];
    }
    
    if (!_thirdVC) {
        
        _thirdVC = [SingleClass creatThirdViewController];
    }

    
    [self addObserver:_vc forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"one"];
    
    [self addObserver:_thirdVC forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"third"];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    NSLog(@"ssssss%@",change[@"new"]);
    
    UIColor *color = (UIColor *)change[@"new"];
    
    self.view.backgroundColor = color;

    
    
}
- (IBAction)nextBtnClick:(UIButton *)sender {
    
    [self.navigationController pushViewController:_thirdVC animated:YES];
}


- (IBAction)changeBtnClick:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.backGroundColor = [UIColor yellowColor];
    
    self.vc.backGroundColor = self.backGroundColor;
    
    self.thirdVC.backGroundColor = self.backGroundColor;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
