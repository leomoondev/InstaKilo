//
//  ImageViewController.h
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageViewController : NSObject

@property (nonatomic, strong) NSString *itemImage;

+ (instancetype)galleryItemWithDictionary:(NSDictionary *)dictionary;

@end
