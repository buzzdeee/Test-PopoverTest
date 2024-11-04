/* 
   Project: Test-PopoverTest

   Author: Sebastian Reitenbach

   Created: 2024-11-04 21:19:17 +0100 by sebastia
   
   Application Controller
*/
 
#ifndef _PCAPPPROJ_APPCONTROLLER_H
#define _PCAPPPROJ_APPCONTROLLER_H

#import "AppKit/AppKit.h"

@interface AppController : NSObject <NSApplicationDelegate>

@property (strong) NSWindow *window;
@property (strong) NSPopover *popover;

@end

#endif
