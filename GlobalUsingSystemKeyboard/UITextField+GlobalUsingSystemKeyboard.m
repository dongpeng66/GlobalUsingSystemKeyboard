//
//  UITextField+GlobalUsingSystemKeyboard.m
//  GlobalUsingSystemKeyboard
//
//  Created by dp on 2021/7/15.
//

#import "UITextField+GlobalUsingSystemKeyboard.h"
#import <objc/runtime.h>
static BOOL _globalUsingSystemKeyboard;
@implementation UITextField (GlobalUsingSystemKeyboard)

-(void)setGm_usingSystemKeyboard:(BOOL)gm_usingSystemKeyboard{
    objc_setAssociatedObject(self, @selector(gm_usingSystemKeyboard), @(gm_usingSystemKeyboard), OBJC_ASSOCIATION_ASSIGN);
    [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(textFieldDidBeginEdit:)
                                                name:UITextFieldTextDidBeginEditingNotification
                                              object:self];

   [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(textFieldDidEndEdit:)
                                                name:UITextFieldTextDidEndEditingNotification
                                              object:self];
}
- (BOOL)gm_usingSystemKeyboard{
    NSNumber *gm_usingSystemKeyboard=objc_getAssociatedObject(self, _cmd);
    return [gm_usingSystemKeyboard boolValue];
}
//+(void)setGm_globalUsingSystemKeyboard:(BOOL)gm_globalUsingSystemKeyboard{
//    objc_setAssociatedObject(self, @selector(gm_globalUsingSystemKeyboard), @(gm_globalUsingSystemKeyboard), OBJC_ASSOCIATION_ASSIGN);
//}
//+(BOOL)gm_globalUsingSystemKeyboard{
//    NSNumber *gm_globalUsingSystemKeyboard=objc_getAssociatedObject(self, _cmd);
//    return [gm_globalUsingSystemKeyboard boolValue];
//}
/**判断是不是要禁用第三方键盘 */
+(BOOL)gm_shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier{
    if ([extensionPointIdentifier isEqualToString:@"com.apple.keyboard-service"]) {
//        if (UITextField.gm_globalUsingSystemKeyboard) {
//
//           return NO;
//        }
        if (_globalUsingSystemKeyboard) {
            
           return NO;
        }
    }
    return YES;
}
- (void)textFieldDidBeginEdit:(NSNotification *)notification {
//    UITextField.gm_globalUsingSystemKeyboard = self.gm_usingSystemKeyboard;
    _globalUsingSystemKeyboard=self.gm_usingSystemKeyboard;
}

- (void)textFieldDidEndEdit:(NSNotification *)notification {
    
//    UITextField.gm_globalUsingSystemKeyboard = NO;
    _globalUsingSystemKeyboard=NO;
}
@end
