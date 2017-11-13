//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Alex Quigley on 2017-11-13.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()
@property (nonatomic) UIPanGestureRecognizer *gestureRecognizer;
@end


@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        _gestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(respondToPanRecognizer:)];
        [self addGestureRecognizer:_gestureRecognizer];
    }
    
    return self;
}

- (void)respondToPanRecognizer:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self];
    CGRect bounds = self.bounds;
    
    CGFloat newBoundsOriginY = bounds.origin.y - translation.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    self.bounds = bounds;
    
    [sender setTranslation:CGPointZero inView:self];
}

@end
