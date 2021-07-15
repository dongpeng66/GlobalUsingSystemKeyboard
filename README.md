# GlobalUsingSystemKeyboard
禁用第三方键盘

#第一步\n
导入分类\n
#第二步\n
AppDelegate.m中加入如下代码\n
- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier{\n
    return [UITextField gm_shouldAllowExtensionPointIdentifier:extensionPointIdentifier];\n
}\n
#第三步\n
给需要禁止第三方键盘的textfeild添加如下代码：self.textField.gm_usingSystemKeyboard=YES;
