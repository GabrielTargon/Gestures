//
//  GesturesViewController.m
//  Gestures
//
//  Created by Gabriel Targon on 20/11/13.
//  Copyright (c) 2013 BEPiD. All rights reserved.
//

#import "GesturesViewController.h"

@interface GesturesViewController ()

@end

@implementation GesturesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Pan gesture
- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
                                         recognizer.view.center.y + translation.y); //Move de acordo com o gesto realizado
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view]; //Zera o Translation para que a imagem pare quando o gesto parar
}

//Pinch gesture
- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale); //Aumenta a imagem conforme o gesto
    recognizer.scale = 1; //Faz com que a imagem permaneça na escala determinada pelo gesto
}

//Rotate gesture
- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation); //Rotaciona a imagem conforme o gesto
    recognizer.rotation = 0; //Faz com que a imagem permaneça no angulo determinado pelo gesto
}

- (IBAction)handleLongPress:(UILongPressGestureRecognizer *)recognizer {
    
}

//Permite vários gestos simultaneamente
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}



@end
