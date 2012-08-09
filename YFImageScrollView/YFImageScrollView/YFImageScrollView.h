//
//  YFImageScrollView.h
//  YFImageScrollView
//
//  Created by yangfei on 12-8-10.
//  Copyright (c) 2012年 appxyz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YFImageScrollView : UIView <UIScrollViewDelegate>
@property (nonatomic, retain) UIScrollView      *scrollView;
@property (nonatomic, retain) NSMutableArray    *imageArray;
@property (nonatomic, retain) UIPageControl     *pageControl;
- (id)initWithFrame:(CGRect)frame imageArray:(NSMutableArray *)images;
@end
