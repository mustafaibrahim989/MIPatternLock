MIPatternLock
============

iOS style pattern lock, inspired by http://blog.grio.com/2011/11/android-pattern-lock-on-iphone.html

Installation
============

    MIPatternLockViewController *patternLockVC = [[MIPatternLockViewController alloc] init];
    // optional set your transition style
    patternLockVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [patternLockVC showPatternLockFor:showForAuthenticate withActiveDotImage:[UIImage imageNamed:@"dot_active"] withInactiveDotImage:[UIImage imageNamed:@"dot_inactive"] withLineColor:nil withCompletionHandler:^(MIPatternLockViewController *viewController, NSString *patternString) {
        NSLog(@"%@", patternString);
    }];
    
choose between types:
    showForAuthenticate, showForEnable, showForChange, showForDisable
    
    
Notes
============

Designed for iOS 6 & 7.

Screenshots
============
![alt tag](https://raw.github.com/mustafaibrahim989/MIPatternLock/master/screenshot1.png)==![alt tag](https://raw.github.com/mustafaibrahim989/MIPatternLock/master/screenshot2.png)


License
============
MIPatternLock is available under the MIT license. See the LICENSE file for more info.
