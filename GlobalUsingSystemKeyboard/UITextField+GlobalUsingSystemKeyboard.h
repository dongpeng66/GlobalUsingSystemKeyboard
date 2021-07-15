//
//  UITextField+GlobalUsingSystemKeyboard.h
//  GlobalUsingSystemKeyboard
//
//  Created by dp on 2021/7/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (GlobalUsingSystemKeyboard)
@property (nonatomic, assign) BOOL gm_usingSystemKeyboard;/**< 使用系统键盘 */

//@property (nonatomic, assign, class) BOOL gm_globalUsingSystemKeyboard;   /**< 全局是否使用系统键盘 */

/**判断是不是要禁用第三方键盘   返回NO 禁止三方键盘  返回YES可以使用三方键盘 */
+(BOOL)gm_shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier;
@end

NS_ASSUME_NONNULL_END
