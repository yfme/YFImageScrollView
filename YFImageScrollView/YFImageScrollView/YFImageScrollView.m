//
//  YFImageScrollView.m
//  YFImageScrollView
//
//  Created by yangfei on 12-8-10.
//  Copyright (c) 2012年 appxyz. All rights reserved.
//

#import "YFImageScrollView.h"

@implementation YFImageScrollView
@synthesize scrollView  = scrollView_;
@synthesize imageArray  = imageArray_;
@synthesize pageControl = pageControl_;

- (void)dealloc{
    [pageControl_ release];
    [imageArray_ release];
    [scrollView_ release];
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame imageArray:(NSMutableArray *)images{
    self = [super initWithFrame:frame];
    if (self) {
        // Scroll View
        self.scrollView = [[[UIScrollView alloc ] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)] autorelease];
        scrollView_.delegate = self;
        scrollView_.pagingEnabled = YES;
        scrollView_.showsHorizontalScrollIndicator = NO;
        scrollView_.showsVerticalScrollIndicator = NO;
        scrollView_.contentSize = CGSizeMake(frame.size.width*[images count],frame.size.height);
        [self addSubview:scrollView_];
        
        for(int i = 0; i <[images count]; i++) {
            UIImage *img =[images objectAtIndex:0];
            UIImageView *imgView = [[UIImageView alloc ] initWithFrame:CGRectMake(frame.size.width*i, 0, frame.size.width, frame.size.height)];
            imgView.userInteractionEnabled = YES;
            imgView.image = img;
            [scrollView_ addSubview:imgView];
            [imgView release];
        }
        
        // Default color
        self.backgroundColor = [UIColor lightGrayColor];
        self.scrollView.backgroundColor = [UIColor clearColor];
        
        // Page Control
        self.pageControl = [[[UIPageControl alloc] initWithFrame:CGRectMake(0, frame.size.height-30, frame.size.width, 30)] autorelease];
        pageControl_.numberOfPages = [images count];
        [self addSubview:pageControl_];

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    pageControl_.currentPage = (int) (scrollView.contentOffset.x / scrollView.frame.size.width);
}

@end
