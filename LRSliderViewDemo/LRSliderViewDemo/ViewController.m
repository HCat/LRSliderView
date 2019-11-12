//
//  ViewController.m
//  LRSliderViewDemo
//
//  Created by hcat on 2018/7/13.
//  Copyright © 2018年 Hcat. All rights reserved.
//

#import "ViewController.h"
#import "LRSliderView.h"
#import "LRSliderViewConfig.h"

@interface ViewController ()<LRSliderViewDelegate>

@property (weak, nonatomic) IBOutlet LRSliderView *sliderView;
@property (nonatomic, strong) NSMutableArray *viewsArray;
@property (nonatomic, strong) NSMutableArray *titleArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sliderView.delegate = self;
    
   
    
    self.titleArray = [NSMutableArray arrayWithArray:@[@"1号", @"2号", @"3号", @"4号"]];

    UIView *view = [[UIView alloc] initWithFrame:self.view.frame];
    view.backgroundColor = [UIColor lightGrayColor];
    UIView *view2 = [[UIView alloc] initWithFrame:self.view.frame];
    view2.backgroundColor = [UIColor yellowColor];
    UIView *view3 = [[UIView alloc] initWithFrame:self.view.frame];
    view3.backgroundColor = [UIColor redColor];
    UIView *view4 = [[UIView alloc] initWithFrame:self.view.frame];
    view4.backgroundColor = [UIColor grayColor];
    self.viewsArray = [NSMutableArray arrayWithArray:@[view, view2, view3, view4]];
    
}

#pragma mark - LRSliderViewDelegate

- (NSInteger)numberOfItemsInSliderView:(LRSliderView *)sliderView{
    return self.titleArray.count;
    
}

- (UIView *)sliderView:(LRSliderView *)sliderView viewForItemAtIndex:(NSInteger)index{
    
    return self.viewsArray[index];
    
}

- (NSString *)sliderView:(LRSliderView *)sliderView titleForItemAtIndex:(NSInteger)index{
    
    return self.titleArray[index];
    
}

- (NSInteger)startIndexForSliderView:(LRSliderView *)sliderView{
    
    return 3;
    
}

- (IBAction)btnClicked:(id)sender {
    
    UIView *view5 = [[UIView alloc] initWithFrame:self.view.frame];
    view5.backgroundColor = [UIColor greenColor];
    
    [self.titleArray addObject:@"5号"];
    [self.viewsArray addObject:view5];
    
    [self.sliderView reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
