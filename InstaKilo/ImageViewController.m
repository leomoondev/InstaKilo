//
//  ImageViewController.m
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ImageViewController.h"

@implementation ImageViewController

- (instancetype)initWithImageName: (NSString *) imageName initWithSubject : (NSString *) imageSubject initWithLocation : (NSString *) imageLocation {
    
    if (self = [super init]) {
        
        _imageName = imageName;
        _imageSubject = imageSubject;
        _imageLocation = imageLocation;
    }
    return self;
    
    
}

@end
