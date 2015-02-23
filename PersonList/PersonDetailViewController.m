//
//  PersonDetailViewController.m
//  PersonList
//
//  Created by Joshua Howland on 1/27/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PersonDetailViewController.h"
#import "Person.h"

@interface PersonDetailViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel *jobLabel;

@end

@implementation PersonDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self updateWithPerson:self.person];
}

- (void)updateWithPerson:(Person *)person {
    self.imageView.image = [UIImage imageNamed:person.imageName];
    self.nameLabel.text = person.name;
    self.phoneLabel.text = person.phoneNumber;
    self.jobLabel.text = person.job;
}

- (void)setPerson:(Person *)person
{
	_person = person;
	[self updateWithPerson:person];
}

@end
