//
//  ViewController.h
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageViewController.h"
#import "ImageViewControllerCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"

@interface ViewController : UIViewController

@property NSMutableArray *storeImages;

@property NSDictionary *groupByLocation;
@property NSDictionary *groupBySubject;

@property NSArray *storeLocationKeys;
@property NSArray *storeSubjectKeys;

@property NSArray *storeKeys;
@property NSDictionary *storeDataDictionary;


@end

