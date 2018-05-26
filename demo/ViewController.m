//
//  ViewController.m
//  demo
//
//  Created by wansong on 26/05/2018.
//  Copyright © 2018 innosmart. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UILabel *counterLabel;
@property (strong, nonatomic) NSNumber *counter;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.counterLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 75, 200, 60)];
  self.counter = @0;
  self.counterLabel.textColor = [UIColor redColor];
  self.counterLabel.backgroundColor = [UIColor yellowColor];
  [self.view addSubview:self.counterLabel];
  self.counterLabel.textAlignment = NSTextAlignmentCenter;
  
  UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(15, 140, 95, 60)];
  UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(120, 140, 95, 60)];
  [btn1 addTarget:self action:@selector(onTouchIncreaseButton:) forControlEvents:UIControlEventTouchUpInside];
  [btn2 addTarget:self action:@selector(onTouchClearButton:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn1];
  [self.view addSubview:btn2];
  [btn1 setTitle:@"inc" forState:UIControlStateNormal];
  [btn2 setTitle:@"clear" forState:UIControlStateNormal];
  [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
  [btn2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
}


- (NSNumber *)counter {
  return @(self.counterLabel.text.integerValue);
}

- (void)setCounter:(NSNumber *)counter {
  self.counterLabel.text = [NSString stringWithFormat:@"%@", counter];
}

- (void)onTouchIncreaseButton:(UIButton *)btn {
  self.counter = @(self.counter.integerValue + 1);
}

- (void)onTouchClearButton:(UIButton *)btn {
  self.counter = @0;
}
@end
