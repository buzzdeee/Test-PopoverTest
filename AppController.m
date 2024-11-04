/* 
   Project: Test-PopoverTest

   Author: Sebastian Reitenbach

   Created: 2024-11-04 21:19:17 +0100 by sebastia
   
   Application Controller
*/

#import "AppController.h"

@implementation AppController

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    // Create the main application window
    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(100, 100, 300, 200)
                                               styleMask:(NSWindowStyleMaskTitled |
                                                          NSWindowStyleMaskClosable |
                                                          NSWindowStyleMaskResizable)
                                                 backing:NSBackingStoreBuffered
                                                   defer:NO];
    [self.window setTitle:@"NSPopover Example"];
    [self.window makeKeyAndOrderFront:nil];

    // Create a button to trigger the popover
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(100, 80, 100, 30)];
    [button setTitle:@"Show Popover"];
    [button setTarget:self];
    [button setAction:@selector(buttonClicked:)];
    [self.window.contentView addSubview:button];
    
    // Initialize the popover
    self.popover = [[NSPopover alloc] init];
    self.popover.behavior = NSPopoverBehaviorTransient;

    // Create a view controller for the popover content
    NSViewController *popoverContentVC = [[NSViewController alloc] init];
    popoverContentVC.view = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 100, 50)];

    // Create a label to display in the popover
    NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 100, 50)];
    label.stringValue = @"Hello, World!";
    label.alignment = NSTextAlignmentCenter;
    label.editable = NO;
    label.bezeled = NO;
    label.drawsBackground = NO;

    // Add the label to the popover content view
    [popoverContentVC.view addSubview:label];
    self.popover.contentViewController = popoverContentVC;
}

// Action method to show the popover
- (void)buttonClicked:(id)sender {
    // Show the popover relative to the button
    NSButton *button = (NSButton *)sender;
    [self.popover showRelativeToRect:button.bounds
                               ofView:button
                        preferredEdge:0];
}

@end
