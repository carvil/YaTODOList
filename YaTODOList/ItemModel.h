//
//  ItemModel.h
//  YaTODOList
//
//  Created by Carlos Vilhena on 6/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ItemModel : NSObject {
    NSString *todoText;
    NSDate *deadline;
    
}

@property (nonatomic, retain) NSString *todoText;
@property (nonatomic, retain) NSDate *deadline;

@end
