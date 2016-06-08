//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

- (NSString *)solveTrivia {
    
    NSDictionary *stateAndCapitals = @{@"Alabama"       : @"Montgomery",
                                       @"Montana"       : @"Helena",
                                       @"Alaska"        : @"Juneau",
                                       @"Nebraska"      : @"Lincoln",
                                       @"Arizona"       : @"Phoenix",
                                       @"Nevada"        : @"Carson City",
                                       @"Arkansas"      : @"Little Rock",
                                       @"New Hampshire"	: @"Concord",
                                       @"California"    : @"Sacramento",
                                       @"New Jersey"    : @"Trenton",
                                       @"Colorado"      : @"Denver",
                                       @"New Mexico"	: @"Santa Fe",
                                       @"Connecticut"	: @"Hartford",
                                       @"New York"      : @"Albany",
                                       @"Delaware"      : @"Dover",
                                       @"North Carolina": @"Raleigh",
                                       @"Florida"       : @"Tallahassee",
                                       @"North Dakota"  : @"Bismarck",
                                       @"Georgia"       : @"Atlanta",
                                       @"Ohio"          : @"Columbus",
                                       @"Hawaii"        : @"Honolulu",
                                       @"Oklahoma"      : @"Oklahoma City",
                                       @"Idaho"         : @"Boise",
                                       @"Oregon"        : @"Salem",
                                       @"Illinois"      : @"Springfield",
                                       @"Pennsylvania"  : @"Harrisburg",
                                       @"Indiana"       : @"Indianapolis",
                                       @"Rhode Island"  : @"Providence",
                                       @"Iowa"          : @"Des Moines",
                                       @"South Carolina" : @"Columbia",
                                       @"Kansas"        : @"Topeka",
                                       @"South Dakota"  : @"Pierre",
                                       @"Kentucky"      : @"Frankfort",
                                       @"Tennessee"     : @"Nashville",
                                       @"Louisiana"     : @"Baton Rouge",
                                       @"Texas"         : @"Austin",
                                       @"Maine"         : @"Augusta",
                                       @"Utah"          : @"Salt Lake City",
                                       @"Maryland"      : @"Annapolis",
                                       @"Vermont"       : @"Montpelier",
                                       @"Massachusetts"	: @"Boston",
                                       @"Virginia"      : @"Richmond",
                                       @"Michigan"      : @"Lansing",
                                       @"Washington"	: @"Olympia",
                                       @"Minnesota"     : @"St. Paul",
                                       @"West Virginia"	: @"Charleston",
                                       @"Mississippi"	: @"Jackson",
                                       @"Wisconsin"     : @"Madison",
                                       @"Missouri"      : @"Jefferson City",
                                       @"Wyoming"       : @"Cheyenne" };
    
    for (NSString *state in stateAndCapitals) {
        NSString *stateLowercase = [state lowercaseString];
        NSString *capital = stateAndCapitals[state];
        capital = [capital stringByReplacingOccurrencesOfString:@" " withString:@""];
        capital = [capital lowercaseString];
        BOOL flag = NO;
        for (NSUInteger j = 0; j < stateLowercase.length; j++) {
            NSString *currentCharInState = [NSString stringWithFormat:@"%c", [stateLowercase characterAtIndex:j]];
            if ( [capital containsString:currentCharInState]) {
                flag = YES;
            }
        }
        if (flag == NO) {
            return state;
        }
    }
    return @"no such state";
}

@end
