//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Salmaan Rizvi on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, readonly) NSUInteger ageInYears;
@property (nonatomic, readonly) NSUInteger heightInInches;
@property (nonatomic, strong, readonly) NSMutableArray *skills;
@property (nonatomic, readonly) BOOL isQualifiedTutor;

-(instancetype) init;

-(instancetype) initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears;

-(instancetype) initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger) heightInInches;

-(NSString *) celebrateBirthday;

-(void) learnSkillBash;

-(void) learnSkillXcode;

-(void) learnSkillObjectiveC;

-(void) learnSkillObjectOrientedProgramming;

-(void) learnSkillInterfaceBuilder;

-(BOOL) isQualifiedTutor;

@end
