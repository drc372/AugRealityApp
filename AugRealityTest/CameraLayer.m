//
//  CameraLayer.m
//  AugRealityTest
//
//  Created by Dan Colomb on 2/25/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "CameraLayer.h"


@implementation CameraLayer

- (id)init
{
    if((self=[super init]))
    {
        #define CAMERA_TRANSFORM  1.24299
        
        m_uip = [[UIImagePickerController alloc] init];
        m_uip.sourceType = UIImagePickerControllerSourceTypeCamera;
        m_uip.wantsFullScreenLayout = YES;
        m_uip.allowsEditing = NO;
        m_uip.showsCameraControls = NO;
        m_uip.navigationBarHidden = YES;
        m_uip.toolbarHidden = YES;
        m_uip.cameraViewTransform =
        CGAffineTransformScale(m_uip.cameraViewTransform,
                               CAMERA_TRANSFORM,
                               CAMERA_TRANSFORM );
        
        [[[[CCDirector sharedDirector] view] window] addSubview:m_uip.view];
        [[[[CCDirector sharedDirector] view] window]
         sendSubviewToBack:m_uip.view];
    }
    return self;
}

@end
