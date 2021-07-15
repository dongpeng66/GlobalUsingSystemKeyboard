//
//  ViewController.m
//  GlobalUsingSystemKeyboard
//
//  Created by dp on 2021/7/15.
//

#import "ViewController.h"
#import "UITextField+GlobalUsingSystemKeyboard.h"
#import "GMUITextField.h"
@interface ViewController ()
@property (nonatomic,strong) GMUITextField *textField;

@property (nonatomic,strong) GMUITextField *textField2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField=[[GMUITextField alloc] initWithFrame:CGRectMake(80, 200, 200, 40)];
    self.textField.backgroundColor=[UIColor redColor];
//    self.textField.keyboardType=UIKeyboardTypeNumberPad;
    self.textField.gm_usingSystemKeyboard=YES;
    [self.view addSubview:self.textField];
    
    
    self.textField2=[[GMUITextField alloc] initWithFrame:CGRectMake(80, 300, 200, 40)];
    self.textField2.backgroundColor=[UIColor redColor];
    self.textField2.gm_usingSystemKeyboard=NO;
    [self.view addSubview:self.textField2];

    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
//    [self.textField removeFromSuperview];
//    self.textField=nil;
    
}

@end
