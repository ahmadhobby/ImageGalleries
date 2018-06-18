//
//  ViewController.m
//  ImageGalleries
//
//  Created by Ahmad Hobby on 2018-06-18.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.pagingEnabled = YES;
    UIImageView *image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    UIImageView *image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    UIImageView *image3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"Lighthouse"]];
    
    [self.scrollView addSubview:image1];
    [self.scrollView addSubview:image2];
    [self.scrollView addSubview:image3];
    
    image1.translatesAutoresizingMaskIntoConstraints = NO;
    image2.translatesAutoresizingMaskIntoConstraints = NO;
    image3.translatesAutoresizingMaskIntoConstraints = NO;
    
    // image 1 size and edge constraints:
    
    [image1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [image1.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    [image1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [image1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [image1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    // image 2 size and edge constraints:
    
    [image2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [image2.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    [image2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [image2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;

    // image 3 size constraints:
    
    [image3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [image3.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    [image3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    [image3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [image3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;

    [image1.trailingAnchor constraintEqualToAnchor:image2.leadingAnchor].active = YES;
    [image2.trailingAnchor constraintEqualToAnchor:image3.leadingAnchor].active = YES;
}


@end
