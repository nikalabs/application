//
//  VideosViewController.m
//  NikaApplication
//
//  Created by Nazanin Mohammadpour on 11/2/14.
//  Copyright (c) 2014 Nika Labs. All rights reserved.
//

#import "VideosViewController.h"

@interface VideosViewController ()
{
   
    MPMoviePlayerController *mpc;
    
}

@end

@implementation VideosViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // webView is a UIWebView, either initialized programmatically or loaded as part of a xib.
 
    
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



    
                            
                            


- (IBAction)playButton:(id)sender {
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"Nika Labs SEO" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    mpc = [[MPMoviePlayerController alloc]initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    [[self view]addSubview:mpc.view];
    [mpc setFullscreen:YES];
    [mpc play];
}
@end
