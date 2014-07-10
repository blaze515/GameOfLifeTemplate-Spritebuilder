//
//  Creature.m
//  GameOfLife
//
//  Created by Jacob Dunn on 7/7/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (instancetype)initCreature {
    // 'super' refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    // when you create an @property as we did in the .h, an instance variable leading underscore is automatically created
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode and Creature is a subclass of CCSprite which is a sublcass of CCNode
    self.visible = _isAlive;
}

@end
