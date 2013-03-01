//
//  MainScene.m
//  AugRealityTest
//
//  Created by Dan Colomb on 2/24/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MainScene.h"
#import "CameraLayer.h"
#import "ActionLayer.h"


@implementation MainScene

-(id) init
{
    self = [super init];
    if (self != nil)
    {
        CameraLayer *backgroundLayer = [CameraLayer node];
        [self addChild:backgroundLayer z:100];
        
        ActionLayer *actionLayer = [ActionLayer node];
        [self addChild:actionLayer z:200];
    }
    return self;
}


@end
