//
//  HWSysContactsTool.h
//  customer
//
//  Created by cocool on 2022/8/4.
//  Copyright © 2022 sunxingzhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Contacts/Contacts.h>
#import <ContactsUI/ContactsUI.h>


@interface HWSysContactsTool : NSObject
-(void)hw_showSysContactsViewCtrl:(UIViewController *)vc didSelectContact:(void(^)(CNContact * contact))selectContactBlock;

@end


