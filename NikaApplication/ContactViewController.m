//
//  ContactViewController.m
//  NikaApplication
//
//  Created by Nazanin Mohammadpour on 11/2/14.
//  Copyright (c) 2014 Nika Labs. All rights reserved.
//

#import "ContactViewController.h"
#import "MapPin.h"

@interface ContactViewController ()

@end

@implementation ContactViewController
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    MKCoordinateRegion region = { {0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = 37.287400;
    region.center.longitude = -121.947146;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    [mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.title = @"NikaLabs";
    ann.subtitle = @"Tel: (408)823-0500";
    ann.coordinate = region.center;
    [mapView addAnnotation:ann];
    
    
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

- (IBAction)nikaweb:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.nikalabs.com"]];
}



- (IBAction)makeCall:(id)sender {
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"tel:4088230500"]];
}

- (IBAction)emailsend:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        
        mail.mailComposeDelegate = self;
        
        [mail setSubject:@"NikaLabs"];
        
        
        NSArray *toRecipients = [NSArray arrayWithObjects:@"ali@nikalabs.com", nil];
        
        [mail setToRecipients:toRecipients];
        
        
        NSString *emailBody = @"Message to NikaLabs";
        
        [mail setMessageBody:emailBody isHTML:NO];
        
        
        mail.modalPresentationStyle = UIModalPresentationPageSheet;
        
        [self presentViewController:mail animated:YES completion:nil];
        
        
    }else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:@"error" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
        
        [alert show];
        
    }
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    switch (result) {
            
        case MFMailComposeResultCancelled:
            NSLog(@"cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"saved");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"failed");
            break;
        case MFMailComposeResultSent:
            NSLog(@"sent");
            break;
            
        default:
            
            NSLog(@"Default");
            break;
            
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}




@end
