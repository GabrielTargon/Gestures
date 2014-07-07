//
//  GesturesViewController.h
//  Gestures
//
//  Created by Gabriel Targon on 20/11/13.
//  Copyright (c) 2013 BEPiD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GesturesViewController : UIViewController <UIGestureRecognizerDelegate> //Implementei o 'UIGestureRecognizerDelegate' para reconhecer gestos simultaneos

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;
- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer;
- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer;
- (IBAction)handleLongPress:(UILongPressGestureRecognizer *)recognizer;
@end
