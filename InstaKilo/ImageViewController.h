//
//  ImageViewController.h
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageViewController : NSObject

@property NSString* imageName;
@property NSString* imageSubject;
@property NSString* imageLocation;

- (instancetype)initWithImageName: (NSString *) imageName initWithSubject : (NSString *) imageSubject initWithLocation : (NSString *) imageLocation;

@end
