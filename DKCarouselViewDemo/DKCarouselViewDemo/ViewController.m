//
//  ViewController.m
//  DKCarouselViewDemo
//
//  Created by ZhangAo on 14-11-12.
//  Copyright (c) 2014年 zhangao. All rights reserved.
//

#import "ViewController.h"
#import "DKCarouselView.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet DKCarouselView *carouselView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *images = @[@"https://c1.staticflickr.com/9/8428/7855079606_5fc8852562_z.jpg",
                        @"http://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Parang_mountain_image_1.jpg/640px-Parang_mountain_image_1.jpg"
                        ];
    NSMutableArray *items = [NSMutableArray new];
    for (NSString *imageUrl in images) {
        DKCarouselViewItem *urlAD = [DKCarouselViewItem new];

        //urlAD.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"https://c1.staticflickr.com/9/8428/7855079606_5fc8852562_z.jpg"]];
        
        [items addObject:urlAD];
    }
    self.carouselView.defaultImage = [UIImage imageNamed:@"DefaultImage"];
    [self.carouselView setFinite:YES];
    [self.carouselView setBounce: NO];
    [self.carouselView setItems:items];
    //[self.carouselView setAutoPagingForInterval:2];
    [self.carouselView setDidSelectBlock:^(DKCarouselItem *item, NSInteger index) {
        NSLog(@"%zd",index);
    }];
    [self.carouselView setDidChangeBlock:^(DKCarouselView *view, NSInteger index) {
        NSLog(@"%@, %zd", view, index);
    }];
    [self.carouselView setDidScrollBlock:^(DKCarouselView *view, NSInteger offset) {
        NSLog(@"%@, %zd", view, offset);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
