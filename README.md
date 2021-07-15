# GlobalUsingSystemKeyboard
禁用第三方键盘

#第一步
导入分类
#第二步
AppDelegate.m中加入如下代码
- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier{
    return [UITextField gm_shouldAllowExtensionPointIdentifier:extensionPointIdentifier];
}
#第三步
给需要禁止第三方键盘的textfeild添加如下代码：self.textField.gm_usingSystemKeyboard=YES;
