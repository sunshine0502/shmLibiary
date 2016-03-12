//
//  ThirdViewController.m
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "ViewController.h"
#import "SingleClass.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if (!_vc) {
        
        _vc = [SingleClass creatViewController];
    }
    
    if (!_secondVC) {
        
        _secondVC = [SingleClass creatSecondViewController];
    }
    
    [self addObserver:_vc forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"one"];
    
    [self addObserver:_secondVC forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"second"];
}
- (IBAction)changeColorClick:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.backGroundColor = [UIColor greenColor];
    
    self.vc.backGroundColor = self.backGroundColor;
    
    self.secondVC.backGroundColor = self.backGroundColor;
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    NSLog(@"ttttttt%@",change[@"new"]);
    
    UIColor *color = (UIColor *)change[@"new"];
    
    self.view.backgroundColor = color;
    
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
