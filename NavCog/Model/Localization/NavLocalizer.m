/*******************************************************************************
 * Copyright (c) 2014, 2015  IBM Corporation, Carnegie Mellon University and others
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *******************************************************************************/

#import <Foundation/Foundation.h>
#import "NavLocalizer.h"

@implementation NavLocalizer

- (instancetype) initWithID: (NSString*) idStr
{
    self = [super init];
    _idStr = idStr;
    return self;
}

- (void)initializeState:(NSDictionary*) options
{
    [NSException raise:NSInternalInconsistencyException
                format:@"%@ is not override", NSStringFromSelector(_cmd)];
}

- (NavLocalizeResult *)getLocation
{
    [NSException raise:NSInternalInconsistencyException
                format:@"%@ is not override", NSStringFromSelector(_cmd)];
    return nil;
}

- (void) inputBeacons:(NSArray *)beacons
{
    [NSException raise:NSInternalInconsistencyException
                format:@"%@ is not override", NSStringFromSelector(_cmd)];
}

- (void) inputAcceleration: (NSDictionary*) data
{
}

- (void) inputMotion: (NSDictionary*) data
{    
}

- (double) computeDistanceScoreWithOptions: (NSDictionary*) options;{
    return 100;
}

@end