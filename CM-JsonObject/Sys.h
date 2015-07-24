//
//  Sys.h
//  CM-JsonObject
//
//  Created by carlos ortega on 23/07/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Sys : NSObject


@property (nonatomic) float sunrise;
@property (nonatomic) float sunset;
@property (nonatomic,strong)  NSString      *country;

@end


