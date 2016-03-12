//
//  ViewController.m
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import "SingleClass.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface ViewController (){
    
    ViewController *_vc;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *changeColorBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    changeColorBtn.frame = CGRectMake(100, 100, 100, 100);
    
    [changeColorBtn setTitle:@"changeColor" forState:UIControlStateNormal];
    
    [changeColorBtn addTarget:self action:@selector(changeColorBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:changeColorBtn];
    
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    nextBtn.frame = CGRectMake(100, 300, 100, 100);
    
    [nextBtn setTitle:@"nextPage" forState:UIControlStateNormal];
    
    [nextBtn addTarget:self action:@selector(nextButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:nextBtn];
    
    NSString *string = @"I am a lively girl";
    
    NSArray *arr = [string componentsSeparatedByString:@" "];
    
    NSMutableString *mutableStr = [NSMutableString stringWithString:@""];
    
    for (int i = (int)arr.count - 1; i >= 0; i--) {
        
        [mutableStr appendString:arr[i]];
        
        [mutableStr appendString:@" "];
    }
    
    NSLog(@"%@",mutableStr);

    
    
    if(!_secondVC){
        
        _secondVC = [SingleClass creatSecondViewController];
    }
    
    if (!_thirdVC) {
        
        _thirdVC = [SingleClass creatThirdViewController];
    }

    
    [self addObserver:_secondVC forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"second"];
    
    [self addObserver:_thirdVC forKeyPath:@"backGroundColor" options:NSKeyValueObservingOptionNew context:@"third"];
    
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    NSLog(@"ffff%@----%@",change[@"new"],context);
    
}
- (IBAction)changeColorClick:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.backGroundColor = [UIColor redColor];
    
    self.secondVC.backGroundColor = self.backGroundColor;
    
    self.thirdVC.backGroundColor = self.backGroundColor;
    
}

- (void)changeColorBtnClick:(UIButton *)sender {
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.backGroundColor = [UIColor redColor];
    
    self.secondVC.backGroundColor = self.backGroundColor;
    
    self.thirdVC.backGroundColor = self.backGroundColor;
}
- (void)nextButtonClick:(UIButton *)sender {
    
    UIColor *col =  _secondVC.backGroundColor;
    
    NSLog(@"%@",col);
    
    [self.navigationController pushViewController:_secondVC animated:YES];
    
}

- (IBAction)nextBtnClick:(UIButton *)sender {
    
    UIColor *col =  _secondVC.backGroundColor;
    
    NSLog(@"%@",col);
    
    [self.navigationController pushViewController:_secondVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
