//
//  ProjectViewController.m
//  NikaApplication
//
//  Created by Nazanin Mohammadpour on 11/30/14.
//  Copyright (c) 2014 Nika Labs. All rights reserved.
//

#import "ProjectViewController.h"
#import "CustomCell.h"

@interface ProjectViewController ()
{
    NSArray *arrayOfImages;
    
}

@end

@implementation ProjectViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [[self myCollectionView]setDataSource:self];
    [[self myCollectionView]setDelegate:self];
    
    
    arrayOfImages = [[NSArray alloc] initWithObjects:@"project-1.png", @"project-2.png", @"project-3.png", @"project-4.png", @"project-5.png", nil];
    
    
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [arrayOfImages count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *CellIdentifier = @"cell";
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    [[cell myImage]setImage: [UIImage imageNamed:[arrayOfImages objectAtIndex:indexPath.item]]];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
