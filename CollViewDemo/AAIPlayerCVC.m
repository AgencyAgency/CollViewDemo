//
//  AAIPlayerCVC.m
//  CollViewDemo
//
//  Created by Kyle Oba on 5/8/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AAIPlayerCVC.h"
#import "AAIPlayerCVCell.h"

@interface AAIPlayerCVC ()
@property (nonatomic, strong) NSArray *players;

@end

@implementation AAIPlayerCVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.collectionView registerNib:[UINib nibWithNibName:@"AAIPlayerCVCell" bundle:nil]
          forCellWithReuseIdentifier:@"Player Cell"];
}

- (NSArray *)players
{
    if (!_players) {
        _players = @[@{@"name": @"one",
                       @"spikes": @(42)},
                     @{@"name": @"two",
                       @"spikes": @(0)},
                     @{@"name": @"three",
                       @"spikes": @(101)},
                     @{@"name": @"four",
                       @"spikes": @(2000)}];
    }
    return _players;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.players count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    AAIPlayerCVCell *cell = (AAIPlayerCVCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Player Cell" forIndexPath:indexPath];
    cell.player = self.players[indexPath.row];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(200, 200);
}


@end
