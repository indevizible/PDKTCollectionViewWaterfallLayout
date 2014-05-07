//
//  ViewController.m
//  PDKTStickySectionHeadersCollectionViewLayoutDemo
//
//  Created by Daniel García on 31/12/13.
//  Copyright (c) 2013 Produkt. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong,nonatomic) CollectionViewManager *collectionViewManager;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _collectionViewManager = [[CollectionViewManager alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.collectionView.contentInset=UIEdgeInsetsMake(20, 0, 0, 0);
    self.collectionViewManager.collectionView=self.collectionView;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Scroll To Top" style:UIBarButtonItemStyleBordered target:self action:@selector(scrollToTop)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Scroll To Bottom" style:UIBarButtonItemStyleBordered target:self action:@selector(scrollTobottom)];
}

-(void)scrollToTop
{
    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:0] atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
}

-(void)scrollTobottom
{
    [self.collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:0 inSection:2] atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
