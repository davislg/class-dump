// -*- mode: ObjC -*-

//  This file is part of class-dump, a utility for examining the Objective-C segment of Mach-O files.
//  Copyright (C) 1997-1998, 2000-2001, 2004-2012 Steve Nygard.

#import "CDOCModule.h"

#import "CDObjectiveC1Processor.h"
#import "CDOCSymtab.h"

@implementation CDOCModule
{
    uint32_t version;
    NSString *name;
    CDOCSymtab *symtab;
}

- (id)init;
{
    if ((self = [super init])) {
        version = 0;
        name = nil;
        symtab = nil;
    }

    return self;
}

#pragma mark - Debugging

- (NSString *)description;
{
    return [NSString stringWithFormat:@"[%@] name: %@, version: %u, symtab: %@", NSStringFromClass([self class]), self.name, self.version, self.symtab];
}

#pragma mark -

@synthesize version;
@synthesize name;
@synthesize symtab;

- (NSString *)formattedString;
{
    return [NSString stringWithFormat:@"/*\n * %@\n */\n", self.name];
}

@end
