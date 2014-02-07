//
//  ViewController.m
//  MIPatternLockDemo
//
//  Created by Mustafa Ibrahim on 2/7/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "MIPatternLockViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)authlockApp:(id)sender {
    
    MIPatternLockViewController *patternLockVC = [[MIPatternLockViewController alloc] init];
//    patternLockVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [patternLockVC showPatternLockFor:showForAuthenticate withActiveDotImage:[UIImage imageNamed:@"dot_active"] withInactiveDotImage:[UIImage imageNamed:@"dot_inactive"] withLineColor:nil withCompletionHandler:^(MIPatternLockViewController *viewController, NSString *patternString) {
        NSLog(@"%@", patternString);
    }];
}
- (IBAction)enableLock:(id)sender {
    MIPatternLockViewController *patternLockVC = [[MIPatternLockViewController alloc] init];
    //    patternLockVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [patternLockVC showPatternLockFor:showForEnable withActiveDotImage:[UIImage imageNamed:@"dot_active"] withInactiveDotImage:[UIImage imageNamed:@"dot_inactive"] withLineColor:nil withCompletionHandler:^(MIPatternLockViewController *viewController, NSString *patternString) {
        NSLog(@"%@", patternString);
    }];
}
- (IBAction)changeLock:(id)sender {
    MIPatternLockViewController *patternLockVC = [[MIPatternLockViewController alloc] init];
    //    patternLockVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [patternLockVC showPatternLockFor:showForChange withActiveDotImage:[UIImage imageNamed:@"dot_active"] withInactiveDotImage:[UIImage imageNamed:@"dot_inactive"] withLineColor:nil withCompletionHandler:^(MIPatternLockViewController *viewController, NSString *patternString) {
        NSLog(@"%@", patternString);
    }];
}
- (IBAction)disableLock:(id)sender {
    MIPatternLockViewController *patternLockVC = [[MIPatternLockViewController alloc] init];
    //    patternLockVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [patternLockVC showPatternLockFor:showForDisable withActiveDotImage:[UIImage imageNamed:@"dot_active"] withInactiveDotImage:[UIImage imageNamed:@"dot_inactive"] withLineColor:nil withCompletionHandler:^(MIPatternLockViewController *viewController, NSString *patternString) {
        NSLog(@"%@", patternString);
    }];
}

@end
