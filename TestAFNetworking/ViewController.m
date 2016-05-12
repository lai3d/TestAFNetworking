//
//  ViewController.m
//  TestAFNetworking
//
//  Created by Larry Yanlin Lai on 28/4/16.
//  Copyright © 2016 Super Fun. All rights reserved.
//

#import "ViewController.h"
#import <UIWebView+AFNetworking.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

@property (strong, nonatomic) NSURLRequest *homeHtmlRequest;
@property (strong, nonatomic) NSURLRequest *casinotmlRequest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.homeHtmlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://mobsbglobal.138.com"]];
    
    self.casinotmlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://global.138.com/en-gb/mobile/casino#!/slots"]];
    
    [self.progressView setHidden:TRUE];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadWebView:(NSURLRequest *)htmlRequest {
    //NSProgress *progress = [NSProgress alloc];
    //self.progressView.observedProgress = progress;
    // How to use this damn progress? I tried several ways, but none of them works!
    
    [self.webView loadRequest:htmlRequest
                     progress:nil
                      success:^NSString * _Nonnull(NSHTTPURLResponse * _Nonnull response, NSString * _Nonnull HTML) {
                          NSLog(@"Success");
                          return HTML;
                      }
                      failure:^void(NSError *error) {
                          NSLog(@"Error: %@", error.description);
                      }];
}

- (IBAction)homeClick:(id)sender {
    NSLog(@"Home Clicked");
    
    [self loadWebView:self.homeHtmlRequest];
}

- (IBAction)casinoClick:(id)sender {
    NSLog(@"Casino Clicked");
    
    [self loadWebView:self.casinotmlRequest];
}
@end
