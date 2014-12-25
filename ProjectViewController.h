//
//  ProjectViewController.h
//  NikaApplication
//
//  Created by Nazanin Mohammadpour on 11/30/14.
//  Copyright (c) 2014 Nika Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;


@end
