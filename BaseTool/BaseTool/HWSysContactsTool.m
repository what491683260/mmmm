//
//  HWSysContactsTool.m
//  customer
//
//  Created by cocool on 2022/8/4.
//  Copyright © 2022 sunxingzhen. All rights reserved.
//

#import "HWSysContactsTool.h"


@interface HWSysContactsTool ()<CNContactPickerDelegate>
@property (nonatomic, copy) void (^ selectContactBlock)(CNContact *);
@end

@implementation HWSysContactsTool

- (void)hw_showSysContactsViewCtrl:(UIViewController *)vc didSelectContact:(void (^)(CNContact *contact))selectContactBlock {
    self.selectContactBlock = selectContactBlock;
    CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];

    if (status == CNAuthorizationStatusNotDetermined) {
        CNContactStore *store = [[CNContactStore alloc] init];
        [store requestAccessForEntityType:CNEntityTypeContacts
                        completionHandler:^(BOOL granted, NSError *_Nullable error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                               if (granted) {
                                   [self showSysContactVC:vc];
                               }
                           });
        }];
    } else if (status == CNAuthorizationStatusRestricted || status == CNAuthorizationStatusDenied) {
//        [HWGeneralPopupsViewController showAlertWithMessage:LocalizedString(@"Allow this application to access your Contact?")
//                                                  leftTitle:LocalizedString(@"Cancel")
//                                      q           rightTitle:LocalizedString(@"Confirm")
//                                                rightAction:^{
//            NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
//
//            if (@available(iOS 10.0, *)) {
//                if ([[UIApplication sharedApplication]canOpenURL:url]) {
//                    [[UIApplication sharedApplication]openURL:url
//                                                      options:@{}
//                                            completionHandler:^(BOOL success) {
//                    }];
//                }
//            } else {
//                if ([[UIApplication sharedApplication]canOpenURL:url]) {
//                    [[UIApplication sharedApplication]openURL:url];
//                }
//            }
//        }];
    } else {
        [self showSysContactVC:vc];
    }
}

- (void)showSysContactVC:(UIViewController *)vc {
    CNContactPickerViewController *contactPickerVc = [CNContactPickerViewController new];

    contactPickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    contactPickerVc.delegate = self;
    [vc presentViewController:contactPickerVc animated:YES completion:nil];
}

#pragma mark - CNContactPickerDelegate,
- (void)contactPicker:(CNContactPickerViewController *)picker didSelectContact:(CNContact *)contact {
    if (self.selectContactBlock) {
        self.selectContactBlock(contact);
    }
}

- (void)contactPickerDidCancel:(CNContactPickerViewController *)picker {
    if (self.selectContactBlock) {
        self.selectContactBlock(nil);
    }
}

@end
