//
//  MIPatternLockViewController.h
//  MIPatternLock
//
//  Created by Mustafa Ibrahim on 2/7/14.
//  Copyright (c) 2014 Mustafa Ibrahim. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    showForAuthenticate = 0,
    showForEnable,
    showForChange,
    showForDisable
} ShowType;

@interface MIPatternLockViewController : UIViewController {
    NSMutableArray* _paths;
    
    // after pattern is drawn, call this:
    id _target;
    SEL _action;
}

- (void) showPatternLockFor:(ShowType) type withActiveDotImage:(UIImage *) activeDot withInactiveDotImage:(UIImage *)inactiveDot withLineColor:(UIColor *) color withCompletionHandler:(void (^)(MIPatternLockViewController *viewController, NSString * patternString)) block;

@end
