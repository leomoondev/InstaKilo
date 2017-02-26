//
//  ViewController.m
//  InstaKilo
//
//  Created by Hyung Jip Moon on 2017-02-22.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ViewController.h"
@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initGalleryItems];
    [self.collectionView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initGalleryItems {
    
    self.storeImages = [[NSMutableArray alloc] init];

    self.groupByLocation = [[NSMutableDictionary alloc] init];
    self.groupBySubject = [[NSMutableDictionary alloc] init];
    
    self.storeImages = [[NSMutableArray alloc] init];
    self.groupBySubject = [[NSMutableDictionary alloc] init];
    self.groupByLocation = [[NSMutableDictionary alloc] init];
    self.storeSubjectKeys = [[NSArray alloc] init];
    self.storeLocationKeys = [[NSArray alloc] init];
    
    ImageViewController *image1 = [[ImageViewController alloc] initWithImageName:@"1.jpg" initWithSubject:@"Movie" initWithLocation:@"Vancouver"];
    ImageViewController *image2 = [[ImageViewController alloc] initWithImageName:@"2.jpg" initWithSubject:@"Science" initWithLocation:@"Toronto"];
    ImageViewController *image3 = [[ImageViewController alloc] initWithImageName:@"3.jpg" initWithSubject:@"Travel" initWithLocation:@"London"];
    ImageViewController *image4 = [[ImageViewController alloc] initWithImageName:@"4.jpg" initWithSubject:@"Travel" initWithLocation:@"Vancouver"];
    ImageViewController *image5 = [[ImageViewController alloc] initWithImageName:@"5.jpg" initWithSubject:@"Travel" initWithLocation:@"Toronto"];
    ImageViewController *image6 = [[ImageViewController alloc] initWithImageName:@"6.jpg" initWithSubject:@"Movie" initWithLocation:@"London"];
    ImageViewController *image7 = [[ImageViewController alloc] initWithImageName:@"7.jpg" initWithSubject:@"Travel" initWithLocation:@"Vancouver"];
    ImageViewController *image8 = [[ImageViewController alloc] initWithImageName:@"8.jpg" initWithSubject:@"Science" initWithLocation:@"Toronto"];
    ImageViewController *image9 = [[ImageViewController alloc] initWithImageName:@"9.jpg" initWithSubject:@"Science" initWithLocation:@"London"];
    ImageViewController *image10 = [[ImageViewController alloc] initWithImageName:@"10.jpg" initWithSubject:@"Movie" initWithLocation:@"Vancouver"];
    
    [self.storeImages addObjectsFromArray:@[image1, image2, image3, image4, image5, image6, image7, image8, image9, image10]];
    
    self.groupByLocation = @{
                             @"Vancouver":@[image1,image4, image7, image10],
                             @"Toronto":@[image2, image5, image8],
                                @"London":@[image3, image6, image9]
    };
    
    self.groupBySubject = @{
                             @"Movie":@[image1,image6, image10],
                             @"Science":@[image2, image8, image9],
                             @"Travel":@[image3, image4, image5, image7]
    };
  
    //save all keys to keys arrays
    self.storeLocationKeys = [[self.groupByLocation allKeys]sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    self.storeSubjectKeys = [[self.groupBySubject allKeys]sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
   
    
    //default current data
    self.storeKeys = self.storeSubjectKeys;
    self.storeDataDictionary = self.groupBySubject;
    

}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    NSArray *tempStoreImages = self.storeDataDictionary[self.storeKeys[section]];
    return tempStoreImages.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    ImageViewControllerCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    NSArray *tempStoreKeyArray = self.storeDataDictionary[self.storeKeys[indexPath.section]];
    ImageViewController *imageVC = tempStoreKeyArray[indexPath.item];

    
    
    NSString *tempImageName = imageVC.imageName;
    UIImage *tempImage = [UIImage imageNamed:tempImageName];
    cell.createImageView.image = tempImage;
    return cell;
}
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        HeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        //headerView.headerCollectionReusableViewHeader.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
//        headerView.headerCollectionReusableViewHeader.text = [NSString stringWithFormat:@"%@", self.groupBySubject.allKeys];
//        headerView.headerCollectionReusableViewHeader.text = [NSString stringWithFormat:@"%@", self.groupByLocation.allKeys];
//        
        headerView.headerCollectionReusableViewHeader.text = self.storeKeys[indexPath.section];
        

        return headerView;
    }
    return nil;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.storeKeys.count;
}


@end
