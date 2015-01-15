//
//  LinkedList.m
//  LinkedLists
//
//  Created by David Manuntag on 2015-01-14.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _linkedList = [[NSMutableArray alloc]initWithObjects:@"carrot",@"spinach", @"lettuce", @"cereal", @"milk", @"eggs", nil];
    }
    return self;
}


@end
