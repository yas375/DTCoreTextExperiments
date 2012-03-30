//
//  ADRootViewController.m
//  DTCoreTextExperiments
//
//  Created by Victor Ilyukevich on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ADRootViewController.h"
#import "DTCoreText.h"

@implementation ADRootViewController

- (void)loadView {
    [super loadView];
    DTAttributedTextView *textView = [[DTAttributedTextView alloc] initWithFrame:self.view.bounds];
    NSString *html = @"Lorem ipsum dolor sit amet.";
    NSData *data = [html dataUsingEncoding:NSUTF8StringEncoding];
	NSAttributedString *string = [[NSAttributedString alloc] initWithHTML:data documentAttributes:NULL];
    textView.attributedString = string;
    [self.view addSubview:textView];
}

@end
