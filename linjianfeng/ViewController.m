//
//  ViewController.m
//  linjianfeng
//
//  Created by admin on 16/5/19.
//  Copyright (c) 2016年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *teamName1;
@property(nonatomic,strong)UILabel *teamName2;
@property(nonatomic,strong)UILabel *scoreT1;
@property(nonatomic,strong)UILabel *scoreT2;
@property(nonatomic,strong)UILabel *G1;
@property(nonatomic,strong)UILabel *teamScore11;
@property(nonatomic,strong)UILabel *teamScore12;
@property(nonatomic,strong)UIButton *addBT11;
@property(nonatomic,strong)UIButton *addBT12;
@property(nonatomic,strong)UIButton *saveBT;
@property(nonatomic,assign)NSInteger temp11;
@property(nonatomic,assign)NSInteger temp21;
@property(nonatomic,assign)NSInteger num1;
@property(nonatomic,assign)NSInteger num2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.teamName1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 150, 50)];
    self.teamName1.backgroundColor = [UIColor cyanColor];
    self.teamName1.text = @"team";
    self.teamName1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamName1];
    
    self.teamName2 = [[UILabel alloc] initWithFrame:CGRectMake(235, 150, 150, 50)];
    self.teamName2.backgroundColor = [UIColor cyanColor];
    self.teamName2.textAlignment = NSTextAlignmentCenter;
    self.teamName2.text = @"team";
    [self.view addSubview:self.teamName2];
    
    self.scoreT1 = [[UILabel alloc] initWithFrame:CGRectMake(70, 220, 80, 30)];
    self.scoreT1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.scoreT1];
    
    self.scoreT2 = [[UILabel alloc] initWithFrame:CGRectMake(270, 220, 80, 30)];
    self.scoreT2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.scoreT2];
    
    self.G1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 260, 40, 40)];
    self.G1.backgroundColor = [UIColor cyanColor];
    self.G1.text = @"G1";
    self.G1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.G1];
    
    self.teamScore11 = [[UILabel alloc] initWithFrame:CGRectMake(100, 260, 80, 40)];
    self.teamScore11.backgroundColor = [UIColor cyanColor];
    self.teamScore11.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamScore11];
    
    self.addBT11 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.addBT11.backgroundColor = [UIColor orangeColor];
    [self.addBT11 setTitle:@"+1" forState:UIControlStateNormal];
    self.addBT11.frame = CGRectMake(180, 260, 30, 40);
    [self.addBT11 addTarget:self action:@selector(addAction1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.addBT11];
    
    self.teamScore12 = [[UILabel alloc] initWithFrame:CGRectMake(220, 260, 80, 40)];
    self.teamScore12.backgroundColor = [UIColor cyanColor];
    self.teamScore12.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamScore12];
    
    self.addBT12 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.addBT12.backgroundColor = [UIColor orangeColor];
    [self.addBT12 setTitle:@"+1" forState:UIControlStateNormal];
    self.addBT12.frame = CGRectMake(300, 260, 30, 40);
    [self.addBT12 addTarget:self action:@selector(addAction2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.addBT12];
    
    self.saveBT = [UIButton buttonWithType:UIButtonTypeSystem];
    self.saveBT.backgroundColor = [UIColor orangeColor];
    [self.saveBT setTitle:@"保存" forState:UIControlStateNormal];
    self.saveBT.frame = CGRectMake(160, 420,80, 40);
    [self.saveBT addTarget:self action:@selector(saveAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveBT];
    
    self.temp11 = 0;
    self.temp21 = 0;
    self.num1 = 0;
    self.num2 = 0;
}
- (void)addAction1{
    
    
    self.temp11 += 1;
    self.teamScore11.text = [NSString stringWithFormat:@"%ld",self.temp11];
    if (self.temp11 == 15) {
        
        self.num1 += 1;
        self.scoreT1.text = [NSString stringWithFormat:@"%ld",self.num1];
        self.temp11 = 0;
    }
    
}
- (void)addAction2{
    
    self.temp21 += 1;
    self.teamScore12.text = [NSString stringWithFormat:@"%ld",self.temp21];
    if (self.temp21 == 15) {
        
        self.num2 += 1;
        self.scoreT2.text = [NSString stringWithFormat:@"%ld",self.num2];
        self.temp21 = 0;
    }
    
}

- (void)saveAction{
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
