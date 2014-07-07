//
//  TickleViewController.h
//  Gestures
//
//  Created by Gabriel Targon on 11/22/13.
//  Copyright (c) 2013 BEPiD. All rights reserved.
//

//#import <UIKit/UIKit.h>
//
//@interface TickleViewController : UIViewController
//
//@end

#import <UIKit/UIKit.h>

typedef enum {
    DirectionUnknown = 0,
    DirectionLeft,
    DirectionRight
} Direction;

@interface TickleGestureRecognizer : UIGestureRecognizer

@property (assign) int tickleCount;
@property (assign) CGPoint curTickleStart;
@property (assign) Direction lastDirection;

@end