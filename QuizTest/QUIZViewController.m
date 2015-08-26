//
//  QUIZViewController.m
//  QuizTest
//
//  Created by 江盛诏 on 15/8/26.
//  Copyright (c) 2015年 FirstApplication. All rights reserved.
//

#import "QUIZViewController.h"

@interface QUIZViewController ()

@property (nonatomic) int currentQuestionIndex;


@property (nonatomic,copy) NSArray *questions;
@property (nonatomic,copy) NSArray *answers;

@property (nonatomic,weak) IBOutlet UILabel *questionLabel;
@property (nonatomic,weak) IBOutlet UILabel *answerLabel;
@end

@implementation QUIZViewController

-(instancetype) initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[@"Where are from?",
                           @"What is 1+2?",
                           @"What is 3!?"];
        self.answers = @[@"China.",
                         @"3.",
                         @"6"];
    }
    
    self.questionLabel.text = @"";
    self.answerLabel.text = @"??";
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"??";
    
    
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}


@end

