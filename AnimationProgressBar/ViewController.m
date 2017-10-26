//
//  ViewController.m
//  AnimationProgressBar
//
//  Created by Miguel Mexicano on 25/10/17.
//  Copyright © 2017 Miguel Mexicano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.progressView.progress = 0.0;
    
    //[[self.progressView layer] cornerRadius] = 20 ;
    [self performSelectorOnMainThread:@selector(makeMyProgressBarMoving) withObject:nil waitUntilDone:NO];

}



- (void)makeMyProgressBarMoving {
    
    float actual = [self.progressView progress];
    if (actual < 1) {
        self.progressView.progress = actual + 0.1;
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(makeMyProgressBarMoving) userInfo:nil repeats:NO];
    }
    else{
        
        
        
        
    }
    
} 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
