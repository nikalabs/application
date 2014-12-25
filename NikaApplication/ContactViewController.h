//
//  ContactViewController.h
//  NikaApplication
//
//  Created by Nazanin Mohammadpour on 11/2/14.
//  Copyright (c) 2014 Nika Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MapKit/MapKit.h>

@interface ContactViewController : UIViewController <MFMailComposeViewControllerDelegate>

- (IBAction)nikaweb:(id)sender;

- (IBAction)makeCall:(id)sender;

- (IBAction)emailsend:(id)sender;

@property (strong, nonatomic) IBOutlet MKMapView *mapView;


@end

