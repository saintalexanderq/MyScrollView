//
//  ViewController.m
//  MyScrollView
//
//  Created by Alex Quigley on 2017-11-13.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:scrollView];
    
    UIView *containerView = [[UIView alloc] init];
    containerView.frame = CGRectMake(0, 100, containerView.bounds.size.width, self.view.bounds.size.height + 200);
    [scrollView addSubview:containerView];
    scrollView.contentSize = containerView.bounds.size;
    
//    A red UIView at (20,20) x, y coordinates and with width 100 and height 100
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
    
//    A green UIView at (150,150) x, y coordinates and with width 150 and height 200
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:greenView];
    
    //    A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueView];
    
    //    A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowView];

}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
