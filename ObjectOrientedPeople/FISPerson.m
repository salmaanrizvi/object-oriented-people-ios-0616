//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Salmaan Rizvi on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (nonatomic, strong, readwrite) NSMutableArray *skills;
@property (nonatomic, getter=isQualifiedTutor, readwrite) BOOL isQualifiedTutor;

@end


@implementation FISPerson

- (instancetype)init {
    return [self initWithName:@"Salmaan" ageInYears:24 heightInInches:72];
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    
    return [self initWithName:name ageInYears:ageInYears heightInInches:10];
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    
    self = [super init];
    
    if(self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
        _isQualifiedTutor = NO;
    }
    
    return self;
}

- (NSString *)celebrateBirthday {
    self.ageInYears++;
    NSString *birthdayMessage = [[NSString alloc] initWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [self ordinalForInteger:self.ageInYears].uppercaseString, self.name.uppercaseString];
    return birthdayMessage;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash {
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
}

- (void)learnSkillXcode {
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }
}

- (void)learnSkillObjectiveC {
    if (![self.skills containsObject:@"Objective-C"]) {
        [self.skills addObject:@"Objective-C"];
    }
}

- (void)learnSkillObjectOrientedProgramming {
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

- (void)learnSkillInterfaceBuilder {
    if (![self.skills containsObject:@"Interface Builder"]) {
        [self.skills addObject:@"Interface Builder"];
    }
}

- (BOOL)isQualifiedTutor {
    if (self.skills.count > 3) {
        self.isQualifiedTutor = YES;
    }
    else {
        self.isQualifiedTutor = NO;
    }
    return _isQualifiedTutor;
}

@end
