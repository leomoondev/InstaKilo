//
//  ImageViewController.m
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ImageViewController.h"

@implementation ImageViewController

+ (instancetype)galleryItemWithDictionary:(NSDictionary *)dictionary
{
    ImageViewController *item = [[ImageViewController alloc] init];
    
    item.itemImage = dictionary[@"itemImage"];
    
    return item;
}

@end
