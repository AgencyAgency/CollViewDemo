//
//  AAIPlayerCVCell.m
//  CollViewDemo
//
//  Created by Kyle Oba on 5/9/14.
//  Copyright (c) 2014 AgencyAgency. All rights reserved.
//

#import "AAIPlayerCVCell.h"

@interface AAIPlayerCVCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *spikesLabel;
@property (weak, nonatomic) IBOutlet UIStepper *spikesStepper;

@end

@implementation AAIPlayerCVCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)setPlayer:(NSDictionary *)player
{
    if (_player != player)
    {
        _player = player;
        
        self.nameLabel.text = [NSString stringWithFormat:@"Player %@", player[@"name"]];
        self.spikesLabel.text = [NSString stringWithFormat:@"Spikes: %@", player[@"spikes"]];
        self.spikesStepper.value = [player[@"spikes"] intValue];
    }
}

- (IBAction)stepperValueChanged:(UIStepper *)sender
{
    NSUInteger spikesCount = (int)sender.value;
    self.spikesLabel.text = [NSString stringWithFormat:@"Spikes: %i", spikesCount];
}

@end
