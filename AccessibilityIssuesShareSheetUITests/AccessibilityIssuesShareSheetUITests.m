//
//  AccessibilityIssuesShareSheetUITests.m
//  AccessibilityIssuesShareSheetUITests
//
//  Created by HotelQuickly on 3/29/18.
//  Copyright © 2018 jontelang. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AccessibilityIssuesShareSheetUITests : XCTestCase

@end

@implementation AccessibilityIssuesShareSheetUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)testExample {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Works
    [[app.buttons firstMatch] tap];
    [app.buttons[@"Sheet button 1"] tap];
    
    // Doesn't work
    [[app.buttons firstMatch] tap];
    [app.buttons[@"Sheet button 40"] tap];
}

@end
