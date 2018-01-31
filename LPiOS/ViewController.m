//
//  ViewController.m
//  LPiOS
//
//  Created by Omer Maroof on 31.01.18.
//  Copyright © 2018 LivePerson. All rights reserved.
//

#import "ViewController.h"

@class Department;
@interface Person:NSObject
@property (strong,nonatomic)Department * department;
@end

@implementation Person
@end

@interface Department: NSObject
@property (strong,nonatomic)Person * person;
@end

@implementation Department
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)hitMe:(id)sender {
    
    Person * person = [[Person alloc] init];
    Department * department = [[Department alloc] init];
    person.department = department;
    department.person = person;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
