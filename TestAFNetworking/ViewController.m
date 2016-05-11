//
//  ViewController.m
//  TestAFNetworking
//
//  Created by Larry Yanlin Lai on 28/4/16.
//  Copyright © 2016 Super Fun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)touchUpInside:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadWebView {
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://global.138.com/en-gb/mobile/casino#!/slots"]]];
}

- (IBAction)touchUpInside:(id)sender {
    NSLog(@"Touch up inside");
    
    [self loadWebView];
}
@end
