//
//  UITextField+DisableMenuController.m
//  TestTextField
//
//  Created by sathish babu angadi on 24/06/13.
//  Copyright (c) 2013 sathish babu angadi. All rights reserved.
//

#import "UITextField+DisableMenuController.h"

@implementation MyTextField (UITextField_DisableMenuController)

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    
    UIMenuController *menuController = (UIMenuController*)sender;
            
    if ([UIMenuController sharedMenuController]) {
        
        [UIMenuController sharedMenuController].menuVisible = NO;
        
    }
    
    return NO;
}

@end
