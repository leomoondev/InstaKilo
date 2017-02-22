//
//  ViewController.m
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    
    NSArray *_galleryItems;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initGalleryItems];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initGalleryItems
{
    NSMutableArray *storeImages = [[NSMutableArray alloc] init];

    
    [storeImages  addObject:[UIImage imageNamed:@"1.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"2.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"3.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"4.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"5.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"6.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"7.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"8.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"9.jpg"]];
    [storeImages  addObject:[UIImage imageNamed:@"10.jpg"]];

}


@end
