//
//  ActionLayer.m
//  AugRealityTest
//
//  Created by Dan Colomb on 2/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ActionLayer.h"


@implementation ActionLayer

- (id)init
{
    if((self=[super init]))
    {
        CCSprite *testSprite = [[CCSprite alloc] initWithFile:@"Icon-72.png"];
        testSprite.position = ccp(150,250);
        [self addChild:testSprite];        
    }
    return self;
}

@end
