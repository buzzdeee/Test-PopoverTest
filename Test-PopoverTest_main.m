/* 
   Project: Test-PopoverTest

   Author: Sebastian Reitenbach

   Created: 2024-11-04 21:19:17 +0100 by sebastia
*/

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "AppController.h"

// The main entry point of the application
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];
        AppController *controller = [[AppController alloc] init];
        app.delegate = controller;

        [app run];
    }
    return 0;
}