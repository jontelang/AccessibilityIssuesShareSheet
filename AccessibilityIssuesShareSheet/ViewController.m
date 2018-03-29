//
//  ViewController.m
//  AccessibilityIssuesShareSheet
//
//  Created by HotelQuickly on 3/29/18.
//  Copyright © 2018 jontelang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)openSheet:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    for (int i = 0; i < 50; i++) {
        NSString *title = [NSString stringWithFormat:@"Sheet button %i", i];
        UIAlertAction *action = [UIAlertAction actionWithTitle:title
                                                         style:UIAlertActionStyleDefault
                                                       handler:nil];
        [alert addAction:action];
    }
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Close this sheet"
                                                     style:UIAlertActionStyleCancel
                                                   handler:nil];
    [alert addAction:cancel];
    
    [self presentViewController:alert
                       animated:YES
                     completion:nil];
}

@end
